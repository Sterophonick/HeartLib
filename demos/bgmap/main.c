#include "libheart.h"
#include "such.h"
int rot;

int main()
{
	hrt_SetMode(MODE_3|BG2_ENABLE);
	hrt_loadBGMap((void*)suchBitmap, 38400);
	while (1);
	return 0;
}
