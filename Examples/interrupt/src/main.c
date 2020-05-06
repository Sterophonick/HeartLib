#include <string.h>
#include <math.h>
#include "hrt_oam.h"
#include "hrt_video.h"
#include "hrt_interrupt.h"
#include "hrt_bios.h"
extern unsigned char suchBitmap[38400];
extern unsigned short ballsTiles[576];
extern unsigned short ballsMap[1024];
extern unsigned short ballsPal[16];
u16 i;


void hblank()
{
	u16 temp;
	REG_IME = 0;
	temp = REG_IF;
	if(!(REG_VCOUNT % 60))
		i++;
	if (++i >= 360) i = 0;
	hrt_SetBGY(0, SIN[i] >> 6);
	REG_IF = temp;
	REG_IME = 1;
}

u16 keys;

//Entry Point
int main()
{
	//Sets up background(s)
	hrt_DSPSetBGMode(0); //Sets the video mode to 0
	hrt_DSPEnableBG(0);  //Enabled background 0
	hrt_DSPDisableForceBlank(); //Makes the screen whiten't
	
	//Loads the screen data
	hrt_LoadDataIntoPalette(ballsPal, 0, 16); //Loads the palette data 
	hrt_LoadDataIntoVRAM(ballsTiles, CHAR_BASE_ADR(1), 567); //Loads the Tile Data
	hrt_LoadDataIntoVRAM(ballsMap, 0, 1024); //Loads the Map data
	
	//Configures BG0
	REG_BG0CNT = 0x0088;
	
	//Configures Interrupts
	hrt_InitIRQ(); //Initializes IRQs
	hrt_EnableIRQ(IRQ_HBLANK); //Enables HBlank IRQ
	hrt_SetIRQ(IRQ_HBLANK, hblank); //Sets hblank() as the HBlank IRQ handler
	hrt_EnableIRQ(IRQ_VBLANK); //Enables VBlank IRQ
	
	//Forever
	for(;;)
	{
		hrt_VblankIntrWait();
	}
}