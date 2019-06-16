/**
 * DDR PS2 Controller
 *
 * Switch Component
 *
 * Kevin Cuzner
 */

#include <avr/io.h>

/**
 * Fuse data for this program to work properly on the ATTiny 20
 */
#ifdef __AVR_ATtiny20__
#define FUSE_BODLEVEL2 (unsigned char)~_BV(6)
#define FUSE_BODLEVEL1 (unsigned char)~_BV(5)
#define FUSE_BODLEVEL0 (unsigned char)~_BV(4)
#define FUSE_CKOUT     (unsigned char)~_BV(2)
#define FUSE_WDTON     (unsigned char)~_BV(1)
#define FUSE_RSTDSBL   (unsigned char)~_BV(0)

typedef struct
{
  unsigned char byte;
} __fuse_t;

FUSES = {
  .byte = (FUSE_BODLEVEL1)
};

#else
#error "No fuses defined for selected processor"
#endif

int main(void)
{
  while (1) { }

  return 0;
}
