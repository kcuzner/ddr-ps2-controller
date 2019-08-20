/**
 * DDR PS2 Controller
 *
 * LED Control
 * Switch Component
 *
 * Kevin Cuzner
 */

#include "leds.h"

#include <avr/io.h>
#include <avr/interrupt.h>

void leds_init(void)
{
  // Configure the timer for PWM mode
  OCR0A = 0;
  OCR0B = 0;
  TCCR0A = (1 << COM0A0) | (1 << COM0A1) | (1 << COM0B0) | (1 << COM0B1) |
    (1 << WGM00);
  TCCR0B = (1 << WGM02) | (1 << CS00);

  // Enable the timer interrupt
  TIMSK |= (1 << TOIE0);
}

void leds_set(void)
{
  OCR0A = 0xFF;
  OCR0B = 0xFF;
}

ISR(TIM0_OVF_vect)
{
  if (OCR0A)
    OCR0A--;
  if (OCR0B)
    OCR0B--;
}

