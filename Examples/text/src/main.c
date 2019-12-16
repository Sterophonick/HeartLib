#include <string.h>
#include <math.h>
#include <stdbool.h>
#include "hrt_video.h"
#include "hrt_interrupt.h"
#include "hrt_bios.h"
#include "hrt_text.h"

int main()
{
	hrt_DSPSetBGMode(0);
	hrt_DSPEnableBG(0);
	hrt_DSPDisableForceBlank();
	hrt_InitTextEngine(0);
	hrt_InitIRQ();
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_Print(0,0,"HeartLib Text Demo");
	for(;;)
	{
		hrt_VblankIntrWait();
	}
}