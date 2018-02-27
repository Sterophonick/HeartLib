#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;

double hrt_Distance(int x1, int y1, int x2, int y2)
{
	if (hrt_start == 1) {
		return sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2));
	}
}

double hrt_Slope(int x1, int y1, int x2, int y2)
{
	if (hrt_start == 1) {
		return ((x2 - x1) / (y2 - y1));
	}
}

void *hrt_Memcpy(void *dest, const void *src, size_t len)
{
	if (hrt_start == 1) {
		char *d = dest;
		const char *s = src;
		while (len--)
			*d++ = *s++;
		return dest;
	}
}

void hrt_Sleep(double i) {
	if (hrt_start == 1) {
		int x, y;
		int c;
		for (y = 0; y < i; y++) {
			for (x = 0; x < 4000; x++) {
				c = c + 2;    // do something to slow things down
			}
		}
	}
}

void hrt_SleepF(u32 frames) {
	if (hrt_start == 1) {
		int i;
		i = frames;
		while (i--) {
			hrt_VblankIntrWait();
		}
	}
}