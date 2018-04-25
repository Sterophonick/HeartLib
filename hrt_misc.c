#include "libheart.h"
u8* *ExtWRAM = (u8*)0x2000000;
int __gettime(void);
u8  __hrt_reset;
u8 __hrt_rtc;
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
	return 0;
}

double hrt_Slope(int x1, int y1, int x2, int y2)
{
	if (hrt_start == 1) {
		return ((y2 - y1) / (x2 - x1));
	}
	return 0;
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
	return 0;
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

double hrt_VolumeCylinder(double r, double h)
{
	if (hrt_start == 1)
	{
		return (PI)*(r * r)*h;
	}
	return 0;
}

double hrt_AreaTriangle(double a, double b)
{
	if (hrt_start == 1)
	{
		return (1 / 2)*(a*b);
	}
	return 0;
}

double hrt_AreaCircle(double r)
{
	if (hrt_start == 1)
	{
		return (PI)*(r * r);
	}
	return 0;
}

int hrt_GetRTCTime()
{
	if (hrt_start == 1)
	{
		if (__hrt_rtc == 1)
		{
			return __gettime();
		}
	}
	return 0;
}

void hrt_EnableRTC()
{
	__hrt_rtc = 1;
}

void hrt_EnableSoftReset()
{
	__hrt_reset = 1;
}