

#ifndef _BOARD_H_
#define _BOARD_H_


#define BOARD_SAMV71_XULT
#if defined(BOARD_SAMV71_XULT)
	#include "board_v71_xult.h"
#elif defined(BOARD_SAME70_XPLD)
	#include "board_e70_xpld.h"
#else
	#error "board definition not correct!"
#endif

#endif /* #ifndef _BOARD_H_ */

