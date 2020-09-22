//Includes
#include <string.h>
#include <stdbool.h>
#include <hrt_misc.h>
#include <hrt_interrupt.h>
#include <hrt_video.h>
extern unsigned char image_pcx[];

int main()
{
	hrt_DSPSetBGMode(4); //Sets mode to Mode 3
	hrt_DSPEnableBG(2); //Enables BG 2
	hrt_DSPDisableForceBlank(); //Disables Force Blank
	hrt_InitIRQ();
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_DecodePCX(image_pcx, VRAM, PALETTE);
	for(;;)
	{
		hrt_VblankIntrWait(); //Stops CPU until frame is done
	}
}