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
u16  X, Y, Pos_X, Pos_Y;

void hblank()
{
	u16 Flags;
	REG_IME = 0;
	Flags = REG_IF;
	if (++Y >= 360) Y = 0;
		REG_BG0HOFS = Pos_X + (COS[Y] >> 5);
		REG_BG0VOFS = Pos_Y + (SIN[Y] >> 5);

  REG_IF = Flags;
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
 		if (++X >= 360) X = 0;
	 	Y = X;
		hrt_ScanKeys();
		keys = hrt_KeysDown();
		if(keys & KEY_UP) REG_BG0VOFS+=1;


		hrt_VblankIntrWait(); //Waits for the frame to finish drawing
	}
}