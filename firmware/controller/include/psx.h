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
 * Sends data via the PSX bus
 * data: Data to send
 */
void psx_send(uint8_t data);

/**
 * Hook function for when a PSX byte is received. Executed in the main context.
 */
void hook_psx_on_receive(uint8_t received);

#endif /* ifndef __PSX_H__ */

