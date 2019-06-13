# DDR PS2 Controller Firmware

This firmware is for the ATTiny20 and uses avr-gcc. It creates two personalities which are separate and distinct
functions of the single PCB:

 - The Controller: This is the PSX Bus controller which handles input from 6 switches and communicates over the PSX bus.
 - The Switch: Each foot switch has 4 separate physical switches. This collates the 4 switches into a single control
   line and also operates some LEDs.

