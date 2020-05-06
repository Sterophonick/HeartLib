#include <hrt_interrupt.h>
#include <hrt_debug.h>
int var1;

int main()
{
	hrt_InitIRQ();
	hrt_EnableIRQ(IRQ_VBLANK);
	var1 = 9;
	hrt_Assert(var1 == 10, "var1 is not 10");
	while(1)
	{
		hrt_VblankIntrWait();
	}
}