#include "libheart.h"
gba_system __hrt_system;

void hrt_Init(void)
{
	const char* temp = "This ROM was created using HeartLib.";
	__hrt_system.hrt_start = 1;
	__asm("mov r0, #253"::);
	__asm("swi 1"::);
	__hrt_system.hrt_start = 1;
	hrt_irqInit();
	hrt_irqEnable(IRQ_VBLANK);
	REG_IME = 1;
}