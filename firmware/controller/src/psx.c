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

typedef enum {
  PSX_FLAG_NONE = 0,
  PSX_FLAG_RECEIVED = 1,
  PSX_FLAG_SENT = 2,
} PSXReceivedFlags;

static volatile PSXReceivedFlags flags = PSX_FLAG_NONE;
static volatile uint8_t received = 0;

void psx_init(void)
{
  // Set up ack pin
  PSX_ACK_DDR |= (1 << PSX_ACK);

  // Set up SPI for slave mode
  DDRB |= (1 << PB2); // MISO is output
  // Enable SPI interrupt, enable SPI, data order reversed, read on rising edge,
  // clock polarity inverted
  SPCR = (1 << SPIE) | (1 << SPE) | (1 << DORD) | (1<< CPOL) | (1 << CPHA);

  // Enable timer interrupts
  TIMSK = (1 << TOIE0);
}

void psx_tick(void)
{
  if (flags & PSX_FLAG_RECEIVED)
  {
    hook_psx_on_receive(received);
  }

  flags = 0;
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
  SPDR = data;
}

void __attribute__((weak)) hook_psx_on_receive(uint8_t received)
{
}

/**
 * SPI Serial transfer complete
 */
ISR(SPI_vect)
{
  received = SPDR;
  flags |= PSX_FLAG_RECEIVED;
}

/**
 * Timer overflow for ACK
 */
ISR(TIM0_OVF_vect)
{
  //turn off the timer
  TCCR0B = 0;
  PSX_ACK_PORT &= ~(1 << PSX_ACK); //release ACK
}

