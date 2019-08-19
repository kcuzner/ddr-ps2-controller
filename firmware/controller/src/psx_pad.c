/**
 * D-pad implementation
 *
 * DDR PS2 Controller
 * Controller Component
 *
 * Kevin Cuzner
 */

#include "psx_pad.h"
#include "psx.h"

#define PSX_BUTTONS_CONST 0x0003
#define PSX_PAD_TYPE 0x41

static uint8_t buttons[2];

void psx_pad_update(PSXPadButtons update)
{
  update |= PSX_BUTTONS_CONST;
  buttons[0] = ~(update & 0xFF);
  buttons[1] = !((update >> 8) & 0xFF);
}

void hook_psx_on_receive(uint8_t received)
{
  static uint8_t byteNumber = 0;

  if (received == 0x01)
  {
    byteNumber = 0; // Reset back to start
    psx_ack();
    psx_send(~PSX_PAD_TYPE);
  }

  if (byteNumber == 1)
  {
    if (received == 0x42)
    {
      psx_ack();
      // Send the preamble
      psx_send(0xA5);
    }
  }
  else if (byteNumber == 2)
  {
    if (received == 0x00)
    {
      psx_ack();
      psx_send(buttons[0]);
    }
  }
  else if (byteNumber == 3)
  {
    if (received == 0x00)
    {
      psx_ack();
      psx_send(buttons[1]);
    }
  }

  byteNumber++;
}

