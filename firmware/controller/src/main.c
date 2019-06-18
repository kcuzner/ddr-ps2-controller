/**
 * DDR PS2 Controller
 *
 * Controller Component
 *
 * Kevin Cuzner
 */

#include "switches.h"

int main(void)
{
  // Configure all pins. They are default input and this personality uses them
  // all as inputs.
  switches_init();

  while (1) { }

  return 0;
}

