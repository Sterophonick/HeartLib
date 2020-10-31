#include "hrt_debug.h"
#include "hrt_bios.h"
#include "hrt_video.h"
#include "hrt_text.h"

extern void dummy();

void AssertImplementation(bool expression, char* error, char* file, char* function, u32 line)
{
	if(!expression)
	{
		hrt_InitTextEngine(0);
		hrt_DSPSetBGMode(0);
		hrt_DSPEnableBG(0);
		hrt_InitIRQ();
		hrt_EnableIRQ(IRQ_VBLANK);
		hrt_SetIRQ(IRQ_VBLANK, dummy);
		hrt_DSPDisableForceBlank();
		hrt_Print(0, 0, "Assertion failed!");
		hrt_Print(0, 1, "File: %s", file); 
		hrt_Print(0, 2, "Line: %d", line);
		hrt_Print(0, 3, "Function: %s", function);
		hrt_Print(0, 5, "Press any key to ignore,");
		hrt_Print(0, 6, "but be aware that VRAM");
		hrt_Print(0, 7, "recovery is unlikely.");
		hrt_Print(0, 10, error);

		while(!(REG_KEYINPUT & 0x3FF))
		{
			hrt_VblankIntrWait();
		}
	}
}