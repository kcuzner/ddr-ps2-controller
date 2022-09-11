/**
 * DDR PS2 Controller
 *
 * Controller Component
 *
 * Kevin Cuzner
 */

#include "switches.h"
#include "psx_pad.h"
#include "psx.h"

#include <stdint.h>
#include <avr/interrupt.h>
#include <avr/io.h>

int main(void)
{
  // Speed up the clock
  CCP = 0xD8;
  CLKPSR = 0;

  // Configure all pins. They are default input and this personality uses them
  // all as inputs.
  switches_init();
  // Configure the PSX Bus
  psx_init();

  sei();

  while (1)
  {
    PSXPadButtons buttons = PSX_PAD_NONE;
    if (switches_get_state(PINS_BTN0))
      buttons |= PSX_PAD_UP;
    if (switches_get_state(PINS_BTN1))
      buttons |= PSX_PAD_RIGHT;
    if (switches_get_state(PINS_BTN2))
      buttons |= PSX_PAD_DOWN;
    if (switches_get_state(PINS_BTN3))
      buttons |= PSX_PAD_LEFT;
    if (switches_get_state(PINS_BTN4))
      buttons |= PSX_PAD_O;
    if (switches_get_state(PINS_BTN5))
      buttons |= PSX_PAD_X;
    psx_pad_update(buttons);
  }

  return 0;
}

