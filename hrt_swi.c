#include "libheart.h"
void hrt_ColdReset()
{
	asm("swi 0x26"::);
}
void hrt_SoftReset()
{
	asm("swi 0x00"::);
}