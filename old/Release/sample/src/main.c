#include <libheart.h>

int main(void)
{
	hrt_Init();
	hrt_DSPSetBGMode(3);
	hrt_DSPEnableBG(2);
	hrt_FillScreen(0x001F);
	hrt_DSPDisableForceBlank();
	return 0;
}