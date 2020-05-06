#include "hrt_debug.h"
#include "hrt_bios.h"
#include "hrt_video.h"
#include "hrt_text.h"

void AssertImplementation(bool expression, char* error, char* file, u32 line)
{
	if(!expression)
	{
		hrt_InitTextEngine(0);
		hrt_DSPSetBGMode(0);
		hrt_DSPEnableBG(0);
		hrt_DSPDisableForceBlank();
		hrt_Print(0, 0, "Assertion failed!");
		hrt_Print(0, 1, "File: %s", file); 
		hrt_Print(0, 2, "Line: %d", line);
		hrt_Print(0, 4, "Press any key to ignore,");
		hrt_Print(0, 5, "but be aware that VRAM");
		hrt_Print(0, 6, "recovery is unlikely.");
		hrt_Print(0, 9, error);

		while(!(REG_KEYINPUT & 0x3FF))
		{
			hrt_VblankIntrWait();
		}
	}
}