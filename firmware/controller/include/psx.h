/**
 * PSX Bus Implementation
 *
 * DDR2 PS2 Controller
 * Controller Componeont
 *
 * Kevin Cuzner
 */

#ifndef __PSX_H__
#define __PSX_H__

#include <stdint.h>

#define PSX_ACK_DDR DDRB
#define PSX_ACK_PORT PORTB
#define PSX_ACK PB0

#define PSX_ATT_VEC PCINT0_vect
#define PSX_ATT_PCIE PCIE0
#define PSX_ATT_PCMSK PCINT6
#define PSX_ATT_PIN PINA
#define PSX_ATT PA6

/**
 * PSX bus initialization
 */
void psx_init(void);

/**
 * Handles PSX events in the main thread
 */
void psx_tick(void);

/**
 * Asks the bus to hold ack low until the next clock cycle
 */
void psx_ack(void);

/**
 * Configures the next byte to be our idle byte
 */
void psx_idle(void);

/**
 * Sends data via the PSX bus
 * data: Data to send
 */
void psx_send(uint8_t data);

/**
 * Hook function for when a PSX byte is received. Executed in the interrupt context
 */
void hook_psx_on_receive(uint8_t received);

#endif /* ifndef __PSX_H__ */

