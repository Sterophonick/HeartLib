#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	__hrt_system.hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
}