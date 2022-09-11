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

#define PSX_PAD_TYPE 0x41
#define PSX_PAD_NC 0x5A

union {
  // Assumption: AVR is little-endian
  PSXPadButtons update;
  uint8_t buffer[2];
} buttons;

void psx_pad_update(PSXPadButtons update)
{
  // Buttons are low-asserted
  buttons.update = ~update;
}

void hook_psx_on_receive(uint8_t received)
{
  static uint8_t byteNumber = 0;

  if (received == 0x01)
  {
    byteNumber = 0; // Reset back to start
    psx_ack();
    psx_send(PSX_PAD_TYPE);
  }

  if (byteNumber == 1)
  {
    if (received == 0x42)
    {
      psx_ack();
      // Send the preamble
      psx_send(PSX_PAD_NC);
    }
  }
  else if (byteNumber == 2)
  {
    if (received == 0x00)
    {
      psx_ack();
      psx_send(buttons.buffer[0]);
    }
  }
  else if (byteNumber == 3)
  {
    if (received == 0x00)
    {
      psx_ack();
      psx_send(buttons.buffer[1]);
    }
  }

  byteNumber++;
}

