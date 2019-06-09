# Dance-Dance-Revolution PS2 Controller

Kevin Cuzner

## Introduction

This is my attempt at a low-cost, but high quality DIY DDR controller which is compatible with the Sony PlayStation 2.

The firmware is based loosely on my [Pop-N-Music PS2 Controller](https://github.com/kcuzner/pop-n-music-controller).
though I've rewritten it to be closer to my current style.

Although it would be cool to use an STM32 or other advanced ARM controller, that is overkill for what this is. Turns
out, a $0.60 AVR microcontroller can meet all the digital requirements without even needing a 3.3V regulator. To that
end, here is the main featureset:

 - ATTiny20 microcontroller (QFN package, 12 I/O). There are two personalities:
   - The PSX bus interface. This takes input from up to 6 buttons and operates the upstream PSX bus to the PlayStation
     2.
   - The switch controller. This takes input from up to 4 foot switches and produces a single output which is cabled to
     the PSX bux interface board.
 - Single PCB which fits both personalities.
 - Edge-facing LEDs for pad illumination.
   - Strangely enough, it was cheaper to just use a constant-current controlled LED driver than to use a discrete MOSFET
     of an appropriate size.

