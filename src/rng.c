#include "hrt_misc.h"

#define N              (624)
#define M              (397)
#define K              (0x9908B0DFU)
#define hiBit(u)       ((u) & 0x80000000U)
#define loBit(u)       ((u) & 0x00000001U)
#define loBits(u)      ((u) & 0x7FFFFFFFU)
#define mixBits(u, v)  (hiBit(u)|loBits(v))
static u32   state[N+1];
static u32   *next;
static int      left = -1; 

void hrt_SeedRNG(u32 seed)
{
	register u32 x = (seed | 1U) & 0xFFFFFFFFU, *s = state;
	register int    j;
	for (left = 0, *s++ = x, j = N; --j;
		*s++ = (x *= 69069U) & 0xFFFFFFFFU);
}

u32 hrt_ReloadRNG(void)
{
	register u32 *p0 = state, *p2 = state + 2, *pM = state + M, s0, s1;
	register int    j;
	if (left < -1)
		hrt_SeedRNG(4357U);
	left = N - 1, next = state + 1;
	for (s0 = state[0], s1 = state[1], j = N - M + 1; --j; s0 = s1, s1 = *p2++)
		*p0++ = *pM++ ^ (mixBits(s0, s1) >> 1) ^ (loBit(s1) ? K : 0U);
	for (pM = state, j = M; --j; s0 = s1, s1 = *p2++)
		*p0++ = *pM++ ^ (mixBits(s0, s1) >> 1) ^ (loBit(s1) ? K : 0U);
	s1 = state[0], *p0 = *pM ^ (mixBits(s0, s1) >> 1) ^ (loBit(s1) ? K : 0U);
	s1 ^= (s1 >> 11);
	s1 ^= (s1 << 7) & 0x9D2C5680U;
	s1 ^= (s1 << 15) & 0xEFC60000U;
	return(s1 ^ (s1 >> 18));
}

u32 hrt_CreateRNG(void)
{
	register u32 y;
	if (--left < 0)
		return(hrt_ReloadRNG());
	y = *next++;
	y ^= (y >> 11);
	y ^= (y << 7) & 0x9D2C5680U;
	y ^= (y << 15) & 0xEFC60000U;
	return(y ^ (y >> 18));
}

u32 hrt_RNGRange(u32 low, u32 high)
{
	return (hrt_CreateRNG() % high) + low;
}