/**
 * DDR PS2 Controller
 *
 * Switch Component
 *
 * Kevin Cuzner
 */

#include "switches.h"

int main(void)
{
  uint8_t asserted = 0;

  // Configure all pins.
  switches_init();

  while (1)
  {
    asserted = 0;
    for (uint8_t i = PINS_BTN0; i < PINS_BTN5; i++)
    {
      if (switches_get_state(i))
        asserted = 1;
    }
    switches_set_state(PINS_BTN5, asserted);
  }

  return 0;
}
