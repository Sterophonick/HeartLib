/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	if(!__hrt_system.hrt_start)
	{
		__hrt_system.hrt_start++;
		hrt_irqInit();
		hrt_irqEnable(IRQ_VBLANK);
		hrt_irqEnable(IRQ_KEYPAD);
		REG_IME = 1;
		hrt_SeedRNG(0xDEADDEAD);
		
	}
}