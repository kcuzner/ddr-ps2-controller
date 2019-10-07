/**
 * DDR PS2 Controller
 *
 * Common Switch Pin Definitions
 *
 * Kevin Cuzner
 */

#ifndef __SWITCHES_H__
#define __SWITCHES_H__

#include <avr/io.h>

typedef enum { PINS_BTN0, PINS_BTN1, PINS_BTN2, PINS_BTN3, PINS_BTN4,
  PINS_BTN5, PINS_COUNT } PinNumber;

#define SWITCHES_DDR DDRA
#define SWITCHES_PORT PORTA
#define SWITCHES_PIN PINA
#define SWITCHES_PUE PUEA

/**
 * Initializes all pins to inputs
 */
void switches_init(void);

/**
 * Gets the state of a pin, 1 if asserted
 */
uint8_t switches_get_state(PinNumber pin);

/**
 * Sets the state of a pin
 *
 * asserted: If nonzero, the pin will be asserted
 */
void switches_set_state(PinNumber pin, uint8_t asserted);

#endif //__SWITCHES_H__

