#include "libheart.h"

double hrt_Distance(int x1, int y1, int x2, int y2)
{
	return sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2));
}

double hrt_Slope(int x1, int y1, int x2, int y2)
{
	return ((x2 - x1) / (y2 - y1));
}

void *hrt_Memcpy(void *dest, const void *src, size_t len)
{
	char *d = dest;
	const char *s = src;
	while (len--)
		*d++ = *s++;
	return dest;
}