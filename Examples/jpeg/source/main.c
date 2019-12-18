//Includes
#include <string.h>
#include <stdbool.h>
#include <hrt_misc.h>
#include <hrt_interrupt.h>
#include <hrt_video.h>
void vblFunc(void){}
extern unsigned char such2_jpg[];

int main()
{
	hrt_Init(); //Does some recommended initializations
	hrt_DSPSetBGMode(3); //Sets mode to Mode 3
	hrt_DSPEnableBG(2); //Enables BG 2
	hrt_DSPDisableForceBlank(); //Disables Force Blank
	hrt_DecodeJPEG(such2_jpg, VRAM, 240, 160); //Decodes the JPEG
	for(;;)
	{
		hrt_VblankIntrWait(); //Stops CPU until frame is done
	}
}