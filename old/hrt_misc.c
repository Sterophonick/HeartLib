/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/
#include "libheart.h"
u8* EWRAM = (u8*)0x2000000;
u8* BIOS = (u8*)0x00000000;
u8* IWRAM = (u8*)0x03000000;
u8* MMIO = (u8*)0x04000000;
u8* ROM0 = (u8*)0x08000000;
u8* ROM1 = (u8*)0x0A000000;
u8* ROM2 = (u8*)0x0C000000;
extern int __gettime(void);
extern void sleep12();
extern void __hrt_exittoez4();
extern gba_system __hrt_system;

s32 hrt_Distance(int x1, int y1, int x2, int y2)
{
	if (__hrt_system.hrt_start) {
		return hrt_Sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2));
	}
	return 0;
}

s32 hrt_Slope(int x1, int y1, int x2, int y2)
{
	if (__hrt_system.hrt_start) {
		return ((y2 - y1) / (x2 - x1));
	}
	return 0;
}

void hrt_SleepF(u32 frames) {
	if (__hrt_system.hrt_start) {
		register int i;
		i = frames;
		while (i--) {
			hrt_VblankIntrWait();
		}
	}
}

s32 hrt_VolumeCylinder(double r, double h)
{
	if (__hrt_system.hrt_start)
	{
		return (PI)*(r * r)*h;
	}
	return 0;
}

s32 hrt_AreaTriangle(double a, double b)
{
	if (__hrt_system.hrt_start)
	{
		return (1 / 2)*(a*b);
	}
	return 0;
}

s32 hrt_AreaCircle(double r)
{
	if (__hrt_system.hrt_start)
	{
		return (PI)*(r * r);
	}
	return 0;
}

void hrt_EnableRTC(void)
{
	__hrt_system.__hrt_rtc = 1;
}

void hrt_DisableRTC(void)
{
	__hrt_system.__hrt_rtc = 0;
}

int hrt_GetRTCTime(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			return __gettime();
		}
	}
	return 0;
}

int hrt_GetRTCHour_H(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 4) & 3);
		}
	}
	return 0;
}
int hrt_GetRTCHour_L(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return (timer & 15);
		}
	}
	return 0;
}

int hrt_GetRTCMinute_H(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 12) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCMinute_L()
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 8) & 15);
		}
	}
	return 0;
}

int hrt_GetRTCSecond_H(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 20) & 15);
		}
	}
	return 0;
}
int hrt_GetRTCSecond_L(void)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			register int timer = hrt_GetRTCTime();
			return ((timer >> 16) & 15);
		}
	}
	return 0;
}

void hrt_EZ4Exit(void)
{
	if (__hrt_system.hrt_start)
	{
		memset(OAM, 0, 1024);
		__hrt_exittoez4();
	}
}
void hrt_Suspend(void)
{
	if (__hrt_system.hrt_start)
	{
		sleep12();
	}
}

u8 hrt_IsNumberOdd(u32 number)
{
	register u8 ret = 0;
	if(__hrt_system.hrt_start)
	{
		ret = (number % 2 == 1) ? 1 : 0;
	}
	return ret;
}

void hrt_AddByteToMemGroup8(u8* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start)
	{
		for(register u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

void hrt_AddByteToMemGroup16(u16* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start)
	{
		for(register u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

void hrt_AddByteToMemGroup32(u32* offset, int value, u32 wordcount)
{
	if(__hrt_system.hrt_start)
	{
		for(register u32 i = 0; i < wordcount; i++)
		{
			offset[i] = value;
		}
	}
}

u8 hrt_SwapNibbles(u8 n)
{
	if(__hrt_system.hrt_start)
	{
		return ( (n & 0x0F)<<4 | (n & 0xF0)>>4 );
	}
	return 0;
}

void IWRAM_CODE hrt_EZFSetRompage(u16 page)
{
	if(__hrt_system.hrt_start)
	{
		*(vu16 *)0x9fe0000 = 0xd200;
		*(vu16 *)0x8000000 = 0x1500;
		*(vu16 *)0x8020000 = 0xd200;
		*(vu16 *)0x8040000 = 0x1500;
		*(vu16 *)0x9880000 = page;//C4
		*(vu16 *)0x9fc0000 = 0x1500;
	}
}

u16 hrt_SwapBytesInWord(u16 word)
{
	if(__hrt_system.hrt_start)
	{
		return ((word<<8)&0xff00)|((word>>8)&0x00ff);
	}
	return 0;
}

int hrt_SwapWordsInDWord(u32 dword)
{
	if(__hrt_system.hrt_start)
	{
		return (((dword) << 16)&0xffFF0000)|((dword>>16)&0x0000FFff);
	}
	return 0;
}

void hrt_8BitWriteToVRAM(u32 offset, u8 value)
{
	if(__hrt_system.hrt_start)
	{
		register u16 temp;
		switch(hrt_IsNumberOdd(value))
		{
			case 0:
				temp = VRAM[offset/2];
				temp &= ~0xFF;
				temp |= value & 0xFF;
				VRAM[offset/2] = temp;
				break;
			case 1:
				temp = VRAM[offset/2];
				temp &= ~0xFF00;
				temp |= ((value) << 8) & 0xFF00;
				VRAM[offset/2] = temp;
				break;
		}
	}		
}

bool hrt_DetectPogoshell(void)
{
	if(__hrt_system.hrt_start)
	{
		register u32 pogotemp=(u32)(*(u8**)0x0203FBFC);
		return ((pogotemp & 0xFE000000) == 0x08000000)?1:0;
	}
	return 0;
}

void hrt_DMACopy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode)
{
    if (__hrt_system.hrt_start) {
            REG_DMAxSAD(channel) = (u32)source;
            REG_DMAxDAD(channel) = (u32)dest;
			REG_DMAxCNT(channel) = WordCount | mode;
    }
}

void hrt_DMAClear(u8 channel, void* source, void* dest, u32 WordCount)
{
    if (__hrt_system.hrt_start) {
            REG_DMAxSAD(channel) = (u32)source;
            REG_DMAxDAD(channel) = (u32)dest;
			REG_DMAxCNT(channel) = WordCount | 0x81600000;
    }
}

void hrt_GetPad(PAD* pad)
{
    if (__hrt_system.hrt_start) {
		pad->A = keyDown(KEY_A);
		pad->B = (keyDown(KEY_B)) ? 1 : 0;
		pad->UP = keyDown(KEY_UP) ? 1 : 0;
		pad->DOWN = keyDown(KEY_DOWN) ? 1 : 0;
		pad->LEFT = keyDown(KEY_LEFT) ? 1 : 0;
		pad->RIGHT = keyDown(KEY_RIGHT) ? 1 : 0;
		pad->L = keyDown(KEY_L) ? 1 : 0;
		pad->R = keyDown(KEY_R) ? 1 : 0;
		pad->SELECT = keyDown(KEY_SELECT) ? 1 : 0;
		pad->START = keyDown(KEY_START) ? 1 : 0;
	}	
}

void hrt_PrintRTCTimeIntoString(char* ptr)
{
	if (__hrt_system.hrt_start)
	{
		if (__hrt_system.__hrt_rtc == 1)
		{
			char str[9];
			register char *s=str;
			register int timer,mod;
			strcpy(str,"00:00:00");
			timer=hrt_GetRTCTime();
			mod=(timer>>4)&3;				//Hours.
			*(s++)=(mod+'0');
			mod=(timer&15);
			*(s++)=(mod+'0');
			s++;
			mod=(timer>>12)&15;				//Minutes.
			*(s++)=(mod+'0');
			mod=(timer>>8)&15;
			*(s++)=(mod+'0');
			s++;
			mod=(timer>>20)&15;				//Seconds.
			*(s++)=(mod+'0');
			mod=(timer>>16)&15;
			*(s++)=(mod+'0');
			strcpy(ptr,str);
		}
	}
}

extern char hrt_lang_assert[];
extern char hrt_lang_assert_file[];
extern char hrt_lang_assert_line[];
extern char hrt_lang_assert_key[];
extern char hrt_lang_assert_vram[];
extern char hrt_lang_assert_vram2[];
void AssertImplementation(bool expression, char* error, char* file, u32 line)
{
	if (__hrt_system.hrt_start)
	{
		if(!expression)
		{
			hrt_DSPSetBGMode(3);
			hrt_PrintOnBitmap(0, 0, hrt_lang_assert);
			hrt_PrintOnBitmap(0, 8, hrt_lang_assert_file, file);
			hrt_PrintOnBitmap(0, 16, hrt_lang_assert_line, line);
			hrt_PrintOnBitmap(0, 24, hrt_lang_assert_key);
			hrt_PrintOnBitmap(0, 32, hrt_lang_assert_vram);
			hrt_PrintOnBitmap(0, 40, hrt_lang_assert_vram2);
			hrt_PrintOnBitmap(0, 48, error);
			while(!KEY_ANY_PRESSED)
			{
				hrt_VblankIntrWait();
			}
		}
	}
}