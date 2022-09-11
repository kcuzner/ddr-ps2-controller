/**
 * PSX Bus Implementation
 *
 * DDR2 PS2 Controller
 * Controller Componeont
 *
 * Kevin Cuzner
 */

#include "psx.h"

#include <avr/io.h>
#include <avr/interrupt.h>

/**
 * [11 Sep 2022 kcuzner]
 * This PSX bus is based on the ATTiny20 SPI module and I have discovered
 * several quirks that I believe must be worked around to avoid being a "bad
 * actor" on the PSX bus. I honestly believe these quirks to be bugs in the
 * silicon, as there are indications in the datasheet that the implementation
 * of SPI is ...less than perfect. (read the part about master and interaction
 * with the SS# pin when it's configured as an input..."MSTR..must be set by
 * the user to re-enable SPI master mode"...srsly?) None of the below are found
 * in any description in the datasheet and were I doing this project at work
 * where I'd have some pull I'd bring it up with them and get it corrected or
 * clarified.
 *
 * Firstly, MISO is not automatically selected as an output. This makes some
 * sense. So, MISO must be manually configured as an output for data
 * transmission to occur.
 *
 * Secondly, in slave mode when SS# is deasserted, MISO will NOT become Hi-Z.
 * the datasheet says that all the other pins become Hi-Z, but the funny part
 * is that it also says (indirectly) that it doesn't control MISO's DDR.
 *
 * Thirdly, even when SS# is deasserted, MISO will hold the prior value until
 * the next driving edge of SCK arrives. Overwriting SPDR has no effect, as it
 * won't be shifted out until that next driving edge anyway.
 *
 * Fourthly, and most heinously, this behavior of MISO holding the prior value
 * until the next driving edge persists even after SPE is cleared and set
 * again. So, when re-enabling SPI, the MISO output will immediately be driven
 * back to whatever it was when SPI was previously deasserted.
 *
 * In a multi-device non-daisy-chain situation typically we could work around
 * all of the above by just subscribing to the pin-change interrupt on SS# and
 * using that to turn MISO into and output or input, depending on the state of
 * SS#. Unfortunately, someone named myself forgot to put a pulldown on that
 * pin. Since it drives a FET, the FET will nominally hold a charge on that
 * line and so we can't simply set Hi-Z. We must actively drive 0 on that line
 * to deassert the open-drain MISO.  We therefore implement a just-in-time
 * enabling of the SPI bus only when the ATT (SS#) pin is asserted, disabling
 * it immediately after ATT (SS#) is deasserted.
 */

// Enable SPI interrupt, enable SPI, data order reversed, read on rising edge,
// clock polarity inverted
#define SPCR_ENABLE (1 << SPIE) | (1 << SPE) | (1 << DORD) | (1<< CPOL) | (1 << CPHA)
#define SPCR_DISABLE 0

void psx_init(void)
{
  // Set up ack pin
  PSX_ACK_DDR |= (1 << PSX_ACK);

  // Set up SPI for slave mode
  DDRB |= (1 << PB2); // MISO is output
  PORTB &= ~(1 << PB2); // MISO is driven low to discharge the FET

  // Enable timer interrupts
  TIMSK |= (1 << TOIE0);

  // Enable the pin change interrupt for our ATT pin and ensure it's an input.
  // Note that this pin is also the SS# input to the SPI module.
  PSX_ATT_DDR &= ~(1 << PSX_ATT);
  PSX_ATT_PCMSK_REG |= (1 << PSX_ATT_PCMSK);
  GIMSK |= (1 << PCIE0);
}

void psx_ack(void)
{
  // Set the ack pin and turn on the timer for 4us. It must be more than 2us
  // due to the nominal frequency/period of the PSX Bus (500KHz, 2us).
  PSX_ACK_PORT |= (1 << PSX_ACK);
  TCNT0 = 224;
  TCCR0B = (1 << CS00); // CLKIO, no prescaler
}

void psx_send(uint8_t data)
{
  // The output is inverted, as we're driving a FET
  SPDR = ~data;
}

void __attribute__((weak)) hook_psx_on_receive(uint8_t received)
{
}

/**
 * SPI Serial transfer complete
 */
ISR(SPI_vect)
{
  uint8_t received;
  received = SPDR;
  // Default data to send is idle
  SPDR = 0;
  hook_psx_on_receive(received);
}

/**
 * Pin change interrupt vector
 */
ISR(PSX_ATT_VEC)
{
  if (PSX_ATT_PIN & (1 << PSX_ATT))
  {
    // If ATT is high, we are released. Disable SPI and ensure the FET is
    // discharged
    SPCR = SPCR_DISABLE;
    DDRB |= (1 << PB2);
    PORTB &= ~(1 << PB2);
  }
  else
  {
    // If ATT is low, then we're about to begin a transaction. Ensure we're
    // ready to send our idle byte and enable SPI
    SPDR = 0;
    SPCR = SPCR_ENABLE;
  }
}

/**
 * Timer overflow for ACK and other timed things
 */
ISR(TIM0_OVF_vect)
{
  //turn off the timer
  TCCR0B = 0;
  PSX_ACK_PORT &= ~(1 << PSX_ACK); //release ACK
}

