//Includes
#include <libheart.h>
#include "soundbank.h"
extern const u8 soundbank_bin[];
u16 keys_pressed, keys_released;

int main()
{
	hrt_DSPSetBGMode(0); //Sets mode to Mode 3
	hrt_DSPEnableBG(0); //Enables BG 2
	hrt_DSPDisableForceBlank(); //Disables Force Blank
	hrt_InitIRQ();
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_InitTextEngine(0);
    mmInitDefault( (mm_addr)soundbank_bin, 16);
	mmStart( MOD_SAC12, MM_PLAY_LOOP );
	hrt_SetIRQ( IRQ_VBLANK, mmVBlank );
	mmCreateStaticEffect(care1, SFX_CARE1, (int)(1.0f * (1<<10)), 0, 255, 0);
	mmCreateStaticEffect(care2, SFX_CARE2, (int)(1.0f * (1<<10)), 0, 255, 0);
	hrt_Print(0, 0,  "HeartLib MaxMod Demo");
	hrt_Print(0, 1,  "Press A or B for sound effect");
	hrt_Print(0, 18, "Sounds from Petscop");
	hrt_Print(0, 19, "Music by Maktone");
	for(;;)
	{
		hrt_VblankIntrWait(); //Stops CPU until frame is done
		hrt_ScanKeys();
		keys_pressed = hrt_KeysDown();
		keys_released = hrt_KeysUp();
		if ( keys_pressed & KEY_A ) {
			mmEffectEx(&care1);
		}
		if ( keys_pressed & KEY_B ) {
			mmEffectEx(&care2);
		}
		mmFrame();
	}
}