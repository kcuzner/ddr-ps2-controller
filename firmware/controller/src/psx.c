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

static uint8_t acked;

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
  TIMSK |= (1 << TOIE0);

  psx_idle();
}

void psx_tick(void)
{
}

void psx_ack(void)
{
  // Set the ack pin and turn on the timer for 4us. It must be more than 2us
  // due to the nominal frequency/period of the PSX Bus (500KHz, 2us).
  acked = 1;
  PSX_ACK_PORT |= (1 << PSX_ACK);
  TCNT0 = 224;
  TCCR0B = (1 << CS00); // CLKIO, no prescaler
}

void psx_idle(void)
{
  // Very simply set our idle byte, which is 0xFF (or 0x0 since we're inverted)
  psx_send(0);
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
  uint8_t received;
  received = SPDR;
  acked = 0;
  hook_psx_on_receive(received);
  if (!acked)
  {
    psx_idle();
  }
}

/**
 * Pin change interrupt vector
 */
ISR(PSX_ATT_VEC)
{
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

