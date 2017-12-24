#include "libheart.h"
int i, phase;

int main()
{
	hrt_SetMode(MODE_3|BG2_ENABLE);
	hrt_SetFXMode(0x00BF);
	hrt_fillscreen(0xFFFF, 3);
	for(phase=0;phase=17;phase++)
	{
		hrt_SetFXLevel(phase);
		i=2;
		while(i--)
			WaitForVblank();
	}
	return 0;
}