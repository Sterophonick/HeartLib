//Includes
#include <libheart.h>
extern unsigned char image_pcx[];
u16 keys_down;

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
		hrt_ScanKeys();
		keys_down = hrt_KeysHeld();
		if(keys_down & KEY_A)
		{
			hrt_InvertPalette(0, 255);
		}
	}
}