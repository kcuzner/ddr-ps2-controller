/**
 * D-pad implementation
 *
 * DDR PS2 Controller
 * Controller Component
 *
 * Kevin Cuzner
 */

#ifndef __PSX_PAD_H__
#define __PSX_PAD_H__

#include <stdint.h>

typedef enum {
  PSX_PAD_NONE = 0,
  PSX_PAD_SELECT = (1 << 1),
  PSX_PAD_START = (1 << 3),
  PSX_PAD_UP = (1 << 4),
  PSX_PAD_RIGHT = (1 << 5),
  PSX_PAD_DOWN = (1 << 6),
  PSX_PAD_LEFT = (1 << 7),
  PSX_PAD_L2 = (1 << 8),
  PSX_PAD_R2 = (1 << 9),
  PSX_PAD_L1 = (1 << 10),
  PSX_PAD_R1 = (1 << 11),
  PSX_PAD_TRIANGLE = (1 << 12),
  PSX_PAD_O = (1 << 13),
  PSX_PAD_X = (1 << 14),
  PSX_PAD_SQUARE = (1 << 15)
} PSXPadButtons;

void psx_pad_update(PSXPadButtons buttons);

#endif /* ifndef __PSX_PAD_H__ */

