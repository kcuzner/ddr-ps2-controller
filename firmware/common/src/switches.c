/**
 * DDR PS2 Controller
 *
 * Common Switch Pin Definitions
 *
 * Kevin Cuzner
 */

#include "switches.h"

#define PINS_MASK ~(0xFF & (0xFF << PINS_COUNT))

void switches_init(void)
{
  DDRA &= ~PINS_MASK;
  PORTA &= ~PINS_MASK;
}

uint8_t switches_get_state(PinNumber pin)
{
  return !((PINA >> pin) & 0x01);
}

void switches_set_state(PinNumber pin, uint8_t asserted)
{
  if (asserted) {
    DDRA |= 0xFF & (0x01 << pin);
  }
  else {
    DDRA &= ~(0xFF & (0x01 << pin));
  }
}

