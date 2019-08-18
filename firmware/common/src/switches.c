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
  // Set up switches for open-drain operation
  SWITCHES_DDR &= ~PINS_MASK;
  SWITCHES_PORT &= ~PINS_MASK;
}

uint8_t switches_get_state(PinNumber pin)
{
  return !((SWITCHES_PIN >> pin) & 0x01);
}

void switches_set_state(PinNumber pin, uint8_t asserted)
{
  if (asserted) {
    SWITCHES_DDR |= 0xFF & (0x01 << pin);
  }
  else {
    SWITCHES_DDR &= ~(0xFF & (0x01 << pin));
  }
}

