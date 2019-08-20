/**
 * DDR PS2 Controller
 *
 * LED Control
 * Switch Component
 *
 * Kevin Cuzner
 */

#ifndef __LEDS_H__
#define __LEDS_H__

/**
 * Initializes the LEDs
 */
void leds_init(void);

/**
 * Sets the LEDs to full brightness immediately (they will fade in time)
 */
void leds_set(void);

#endif /* ifndef __LEDS_H__ */
