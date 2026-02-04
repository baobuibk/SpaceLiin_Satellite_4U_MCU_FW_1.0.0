/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Include~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#include <stddef.h>
#include "sam.h"   // hoặc samv71.h tùy project/ASF
#include "do.h"

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Defines ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
#define GPIO_MAX_PORTS  5u   // PIOA..PIOE
#define GPIO_MAX_PINS   32u  // bit 0..31

/* Port index mapping (bạn có thể định nghĩa giống bên NXP: 1..N) */
#define PORT_PIOA   1u
#define PORT_PIOB   2u
#define PORT_PIOC   3u
#define PORT_PIOD   4u
#define PORT_PIOE   5u

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private Variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
static Pio* const gpio_ports[GPIO_MAX_PORTS + 1] =
{
    NULL,   /* 0 - invalid */
    PIOA,   /* 1 */
    PIOB,   /* 2 */
    PIOC,   /* 3 */
    PIOD,   /* 4 */
    PIOE,   /* 5 */
};

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Public Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
void do_set(do_t *me)
{
    if (me == NULL)
    {
        return;
    }

    if ((me->port == 0u) || (me->port > GPIO_MAX_PORTS) || (me->pin >= GPIO_MAX_PINS))
    {
        return;
    }

    Pio *port = gpio_ports[me->port];
    if (port == NULL)
    {
        return;
    }

    /* Set output HIGH (atomic set) */
    port->PIO_SODR = (1u << me->pin);
    me->bStatus = true;
}

void do_reset(do_t *me)
{
    if (me == NULL)
    {
        return;
    }

    if ((me->port == 0u) || (me->port > GPIO_MAX_PORTS) || (me->pin >= GPIO_MAX_PINS))
    {
        return;
    }

    Pio *port = gpio_ports[me->port];
    if (port == NULL)
    {
        return;
    }

    /* Set output LOW (atomic clear) */
    port->PIO_CODR = (1u << me->pin);
    me->bStatus = false;
}

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ End of the program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
