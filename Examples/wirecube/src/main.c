#include <string.h>
#include <math.h>
#include "hrt_video.h"
#include "hrt_interrupt.h"
#include "hrt_bios.h"
u32 rX,rY,i,x,X,y,Y,Z

void draw()
{
	
}

void vblFunc(void)
{

}

int main()
{
	hrt_DSPSetBGMode(3);
	hrt_DSPEnableBG(2);
	hrt_InitIRQ();
	hrt_EnableIRQ(IRQ_VBLANK);
	hrt_SetIRQ(IRQ_VBLANK, vblFunc);
	for(;;)
	{
		hrt_VblankIntrWait();
	}
}