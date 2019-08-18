/**
 * DDR PS2 Controller
 *
 * Controller Component
 *
 * Kevin Cuzner
 */

#include "switches.h"
#include "psx.h"

#include <stdint.h>

int main(void)
{
  // Configure all pins. They are default input and this personality uses them
  // all as inputs.
  switches_init();
  // Configure the PSX Bus
  psx_init();

  while (1)
  {
    psx_tick();
  }

  return 0;
}

