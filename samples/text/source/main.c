//Includes
#include "hrt_video.h"
#include "hrt_misc.h"
#include "hrt_interrupt.h"
#include "hrt_text.h"
#include "hrt_bios.h"

int main()
{
	hrt_Init(); //Does some recommended initializations
	hrt_DSPSetBGMode(0); //Sets the BG Mode to 4-Tile layers
	hrt_DSPEnableBG(0); //Enables BG 0
	hrt_DSPDisableForceBlank(); //Unblanks the screen
	hrt_InitTextEngine(0); //Initializes the text engine on BG 0
	hrt_Print(0,0,"HeartLib Text Demo"); //Prints at tile 0,0
	for(;;)
	{
		hrt_VblankIntrWait(); //Stops CPU until frame is done
	}
}