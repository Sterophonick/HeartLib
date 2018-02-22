//File: libheart.h
//Main file for HeartLib
//Use this file often if you're a beginner, even a pro, as it makes GBA development easier, like any other library. Edit this if you want.
//Date: February 2018
//Author: Sterophonick

/*
Possibilities with this library:
	Screen Wipes (Mode 3 at the moment)
	Sprites
	Affine Transformation
	Sound
	DMA
	Palettes
	Scrolling
	Compression
	SRAM
	Text (Mode 3 only at the moment)
	Interrupts
	Blending
	BIOS Calls
	AGBPrint
	GBFS (kudos to Damian Yerrick)
	Access To Undocumented Functions and Registers (Special Greetz to GBATek)
	Color Conversion
	Timers
	Bitmaps
	Keys
	
TODO:
		Implement Tiled Text
		Implement Easy System Call functions
		Implement JPEG Decoding -- For now it goes unused. rip
		Test Compatability with Apex Audio System, if I can get it to work.

Recommended Tools for development with this library:
gfx2gba
usenti
gbfs
mid2s3m
*/
#pragma once

#ifndef LIBHEART_H
#define LIBHEART_H

#ifdef __cplusplus
extern "C" {
#endif

#define HEART_VERSION_MAJOR 1
#define HEART_VERSION_MINOR 00

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
#include <assert.h>
#include <ctype.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <time.h>
#include <complex.h>
#include <stdalign.h>
#include <locale.h>
#include <stdatomic.h>
#include <stdnoreturn.h>
#include <wchar.h>
#include <tgmath.h>
#include <stdbool.h>
#include <stddef.h>
#include <wctype.h>
#include <stdfix.h>
#include <ctype.h>
#include <fastmath.h>
#include <cpio.h>
#include <alloca.h>

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned long vu32;
typedef volatile unsigned long long vu64;
typedef volatile signed char vs8;
typedef volatile signed short vs16;
typedef volatile signed long vs32;
typedef volatile signed long long vs64;
typedef const signed char cs8;
typedef const signed short cs16;
typedef const signed long cs32;
typedef const signed long long cs64;
typedef const volatile signed char cvs8;
typedef const volatile signed short cvs16;
typedef const volatile signed long cvs32;
typedef const volatile signed long long cvs64;
typedef const volatile unsigned char cvu8;
typedef const volatile unsigned short cvu16;
typedef const volatile unsigned long cvu32;
typedef const volatile unsigned long long cvu64;
typedef const signed char cu8;
typedef const signed short cu16;
typedef const signed long cu32;
typedef const signed long long cu64;
typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;

u32* OAMmem;
u16* VRAM;
u16* OAMData;
u16* BGPaletteMem;
u16* OBJPaletteMem;
u16* BGTileMem;
u8* SaveData;
int	hrt_offsetOAMData;
int hrt_offsetOAMPal;
int hrt_offsetBGMap;
int hrt_offsetBGTile;
int hrt_offsetBGPal;
u16* OAM;
int loop;

u16* FrontBuffer;
u16* BackBuffer;
u8 hrt_start;

//gates
#define NOT  !
#define AND  &&
#define NOR  !|
#define OR   |
#define NAND !&
#define XOR  ^
#define XNOR !^

#define BACKBUFFER      0x10

//colors
#define WHITE 0xFFFF
#define RED 0x001F
#define BLUE 0x7C00
#define CYAN 0x7FE0
#define GREEN 0x03E0
#define MAGENTA 0x7c1f
#define BROWN 0x0110
#define BLACK 0x0000
#define BRICK 0x011B
#define PINK 0x7EDD
#define ORANGE 0x029F
#define YELLOW 0x03FF
#define GREY 0x4210

enum LCDC_IRQ {
    LCDC_VBL_FLAG = (1 << 0),
    LCDC_HBL_FLAG = (1 << 1),
    LCDC_VCNT_FLAG = (1 << 2),
    LCDC_VBL = (1 << 3),
    LCDC_HBL = (1 << 4),
    LCDC_VCNT = (1 << 5)
};
//bios calls
#define SoftReset 0x00
#define RegisterRamReset 0x01
#define Halt 0x02
#define Stop 0x03
#define IntrWait 0x04
#define VBlankIntrWait 0x05
#define Div 0x06
#define DivArm 0x07
#define Sqrt 0x08
#define ArcTan 0x09
#define ArcTan2 0x0A
#define CPUSet 0x0B
#define CPUFastSet 0x0C
#define BiosChecksum 0x0D
#define BgAffineSet 0x0E
#define OBJAffineSet 0x0F
#define BitUnPack 0x10
#define LZ77UnCompWRAM 0x11
#define LZ77UnCompVRAM 0x12
#define HuffUnComp 0x13
#define RLUnConpWRAM 0x14
#define RLUnConpVRAM 0x15
#define Diff8bitUnFilterWRAM 0x16
#define Diff8bitUnFilterVRAM 0x17
#define Diff16bitUnFilter 0x18
#define SoundBiasChange 0x19
#define SoundDriverInit 0x1A
#define SoundDriverMode 0x1B
#define SoundDriverMain 0x1C
#define SoundDriverVSync 0x1D
#define SoundChannelClear 0x1E
#define MIDIKey2Freq 0x1F
#define MusicPlayerOpen 0x20
#define MusicPlayerStart 0x21
#define MusicPlayerStop 0x22
#define MusicPlayerContinue 0x23
#define MusicPlayerFadeOut 0x24
#define MultiBoot 0x25
#define HardReset 0x26
#define CustomHalt 0x27
#define SoundDriverVSyncOff 0x28
#define SoundDriverVSyncOn 0x29
#define GetJumpList 0x2A
#define AGBPrint 0xFF

#define hrt_MULTIBOOT const int __gba_multiboot; //Type 'MULTIBOOT' at the beginning of a project, and the file will be compiled as a multiboot ROM.

#ifndef JPEG_DEBUG
#define JPEG_DEBUG 0
#endif
#ifndef JPEG_HANDLE_ANY_FACTORS
#define JPEG_HANDLE_ANY_FACTORS 1
#endif
#ifndef JPEG_FASTER_M211
#define JPEG_FASTER_M211 1
#endif
#ifndef JPEG_USE_IWRAM
#define JPEG_USE_IWRAM 1
#endif
#define JPEG_DCTSIZE 8
#define JPEG_DCTSIZE2 (JPEG_DCTSIZE * JPEG_DCTSIZE)
#ifndef JPEG_MAXIMUM_COMPONENTS
#define JPEG_MAXIMUM_COMPONENTS 4
#endif
#ifndef JPEG_FIXSHIFT
#define JPEG_FIXSHIFT 8
#endif
#ifndef JPEG_MAXIMUM_SCAN_COMPONENT_FACTORS
#define JPEG_MAXIMUM_SCAN_COMPONENT_FACTORS 10
#endif
#ifndef JPEG_FIXED_TYPE
#define JPEG_FIXED_TYPE long int
#endif
#if JPEG_OUTPUT_RGB8
#define JPEG_OUTPUT_TYPE unsigned int

#define JPEG_Convert_Limit(VALUE) ((VALUE) < 0 ? 0 : (VALUE) > 255 ? 255 : (VALUE))

#define JPEG_Convert(OUT, Y, Cb, Cr) \
        do { \
            int eY = (Y) + 63; \
            int R = ((eY) + ((Cr) * 359 >> 8)) * 2; \
            int G = ((eY) - ((Cb) * 88 >> 8) - ((Cr) * 183 >> 8)) * 2; \
            int B = ((eY) + ((Cb) * 454 >> 8)) * 2; \
            \
            R = JPEG_Convert_Limit (R); \
            G = JPEG_Convert_Limit (G) << 8; \
            B = JPEG_Convert_Limit (B) << 16; \
            (OUT) = R | G | B; \
        } while (0)

#define JPEG_Convert_From(IN, Y, Cb, Cr) \
        do { \
            int R = IN & 255; \
            int G = (IN >> 8) & 255; \
            int B = (IN >> 16) & 255; \
            \
            Y = (((R * 66 >> 8) + (G * 129 >> 8) + (B * 25 >> 8)) >> 1) - 63; \
            Cb = ((R * -38 >> 8) + (G * -74 >> 8) + (B * 112 >> 8)) >> 1; \
            Cr = ((R * 112 >> 8) + (G * -94 >> 8) + (B * 18 >> 8)) >> 1; \
        } while (0)
#endif
#ifndef JPEG_OUTPUT_TYPE
#define JPEG_OUTPUT_TYPE unsigned short
#endif
#ifndef JPEG_Convert
#define JPEG_Convert(OUT, Y, Cb, Cr) \
    do { \
        int eY = (Y) + 63; \
        int R = (eY) + ((Cr) * 359 >> 8); \
        int G = (eY) - ((Cb) * 88 >> 8) - ((Cr) * 183 >> 8); \
        int B = (eY) + ((Cb) * 454 >> 8); \
        \
        R = ComponentRange [R >> 2]; \
        G = ComponentRange [G >> 2] << 5; \
        B = ComponentRange [B >> 2] << 10; \
        (OUT) = R | G | B; \
    } while (0)

#endif
#ifndef JPEG_Assert
#if JPEG_DEBUG
#define JPEG_Assert(TEST) \
            do { \
                if (TEST) \
                    break; \
                fprintf (stderr, __FILE__ "(%d): " #TEST "\n", __LINE__); \
                return 0; \
            } while (0)
#else
#define JPEG_Assert(TEST) do { } while (0)
#endif
#endif

enum JPEG_Marker
{
	JPEG_Marker_APP0 = 0xFFE0,
	JPEG_Marker_APP1 = 0xFFE1,
	JPEG_Marker_APP2 = 0xFFE2,
	JPEG_Marker_APP3 = 0xFFE3,
	JPEG_Marker_APP4 = 0xFFE4,
	JPEG_Marker_APP5 = 0xFFE5,
	JPEG_Marker_APP6 = 0xFFE6,
	JPEG_Marker_APP7 = 0xFFE7,
	JPEG_Marker_APP8 = 0xFFE8,
	JPEG_Marker_APP9 = 0xFFE9,
	JPEG_Marker_APP10 = 0xFFEA,
	JPEG_Marker_APP11 = 0xFFEB,
	JPEG_Marker_APP12 = 0xFFEC,
	JPEG_Marker_APP13 = 0xFFED,
	JPEG_Marker_APP14 = 0xFFEE,
	JPEG_Marker_APP15 = 0xFFEF,
	JPEG_Marker_COM = 0xFFFE,
	JPEG_Marker_DHT = 0xFFC4,
	JPEG_Marker_DQT = 0xFFDB,
	JPEG_Marker_DRI = 0xFFDD,
	JPEG_Marker_EOI = 0xFFD9,
	JPEG_Marker_SOF0 = 0xFFC0,
	JPEG_Marker_SOI = 0xFFD8,
	JPEG_Marker_SOS = 0xFFDA
};
typedef enum JPEG_Marker JPEG_Marker;
typedef JPEG_FIXED_TYPE JPEG_QuantizationTable[JPEG_DCTSIZE2];
#define JPEG_FIXMUL(A, B) ((A) * (B) >> JPEG_FIXSHIFT)
#define JPEG_FIXTOI(A) ((A) >> JPEG_FIXSHIFT)
#define JPEG_ITOFIX(A) ((A) << JPEG_FIXSHIFT)
#define JPEG_FTOFIX(A) ((int) ((A) * JPEG_ITOFIX (1)))
#define JPEG_FIXTOF(A) ((A) / (float) JPEG_ITOFIX (1))
typedef struct JPEG_HuffmanTable JPEG_HuffmanTable;
typedef struct JPEG_Decoder JPEG_Decoder;
typedef struct JPEG_FrameHeader JPEG_FrameHeader;
typedef struct JPEG_FrameHeader_Component JPEG_FrameHeader_Component;
typedef struct JPEG_ScanHeader JPEG_ScanHeader;
typedef struct JPEG_ScanHeader_Component JPEG_ScanHeader_Component;
struct JPEG_HuffmanTable
{
	const unsigned char *huffval;
	int maxcode[16];
	const unsigned char *valptr[16];

	unsigned char look_nbits[256];
	unsigned char look_sym[256];
};
struct JPEG_FrameHeader_Component
{
	unsigned char selector;
	unsigned char horzFactor;
	unsigned char vertFactor;
	unsigned char quantTable;
};
struct JPEG_FrameHeader
{
	JPEG_Marker marker;
	int encoding;
	char differential;

	unsigned char precision;
	unsigned short height;
	unsigned short width;
	JPEG_FrameHeader_Component componentList[JPEG_MAXIMUM_COMPONENTS];
	int componentCount;
};
struct JPEG_ScanHeader_Component
{
	unsigned char selector;
	unsigned char dcTable;
	unsigned char acTable;
};
struct JPEG_ScanHeader
{
	JPEG_ScanHeader_Component componentList[JPEG_MAXIMUM_COMPONENTS];
	int componentCount;
	unsigned char spectralStart;
	unsigned char spectralEnd;
	unsigned char successiveApproximationBitPositionHigh;
	unsigned char successiveApproximationBitPositionLow;
};


struct JPEG_Decoder
{
	const unsigned char *acTables[4];
	const unsigned char *dcTables[4];
	JPEG_QuantizationTable quantTables[4];
	unsigned int restartInterval;
	JPEG_FrameHeader frame;
	JPEG_ScanHeader scan;
};


#define JPEG_BITS_START() \
    unsigned int bits_left = 0; \
    unsigned long int bits_data = 0


#define JPEG_BITS_REWIND() \
    do { \
        int count = bits_left >> 3; \
        \
        while (count --) \
        { \
            data --; \
            if (data [-1] == 0xFF) \
                data --; \
        } \
        \
        bits_left = 0; \
        bits_data = 0; \
    } while (0)


#define JPEG_BITS_CHECK() \
    do { \
        while (bits_left < 32 - 7) \
        { \
            bits_data = (bits_data << 8) | (*data ++); \
            if (data [-1] == 0xFF) \
                data ++; \
            bits_left += 8; \
        } \
    } while (0)


#define JPEG_BITS_GET(COUNT) \
    ((bits_data >> (bits_left -= (COUNT))) & ((1 << (COUNT)) - 1))


#define JPEG_BITS_PEEK(COUNT) \
    ((bits_data >> (bits_left - (COUNT))) & ((1 << (COUNT)) - 1))


#define JPEG_BITS_DROP(COUNT) \
    (bits_left -= (COUNT))


#define JPEG_HuffmanTable_Decode(TABLE,OUT) \
    do { \
        int bitcount, result; \
        \
        result = JPEG_BITS_PEEK (8); \
        \
        if ((bitcount = (TABLE)->look_nbits [result]) != 0) \
        { \
            JPEG_BITS_DROP (bitcount); \
            result = (TABLE)->look_sym [result]; \
        } \
        else \
        { \
            int i = 7; \
            \
            JPEG_BITS_DROP (8); \
            do result = (result << 1) | JPEG_BITS_GET (1); \
            while (result > (TABLE)->maxcode [++ i]); \
            \
            result = (TABLE)->valptr [i] [result]; \
        } \
        \
        (OUT) = result; \
    } while (0)

extern const unsigned char JPEG_ToZigZag[JPEG_DCTSIZE2];
extern const unsigned char JPEG_FromZigZag[JPEG_DCTSIZE2];
extern const JPEG_FIXED_TYPE JPEG_AANScaleFactor[JPEG_DCTSIZE2];
extern const unsigned char JPEG_ComponentRange[32 * 3];

#define W 1
#define BIT00 1
#define BIT01 2
#define BIT02 4
#define BIT03 8
#define BIT04 16
#define BIT05 32
#define BIT06 64
#define BIT07 128
#define BIT08 256
#define BIT09 512
#define BIT10 1024
#define BIT11 2048
#define BIT12 4096
#define BIT13 8192
#define BIT14 16384
#define BIT15 32768

//All GBA Registers - Copied from GBATek
#define REG_DISPCNT *(u16*)0x04000000 //Display Control
#define REG_UNKNOWN0 *(u16*)0x04000002 //Unknown - Green Swap?
#define REG_DISPSTAT *(u16*)0x04000004 //General LCD Status
#define REG_VCOUNT *(vu16*)0x04000006 //Vertical Counter
#define REG_BG0CNT *(u16*)0x04000008 //BG0 Control
#define REG_BG1CNT *(u16*)0x0400000A //BG1 Control
#define REG_BG2CNT *(u16*)0x0400000C //BG2 Control
#define REG_BG3CNT *(u16*)0x0400000E //BG3 Control
#define REG_BG0HOFS *(u16*)0x04000010 //BG0 X-Offset
#define REG_BG0VOFS *(u16*)0x04000012 //BG0 Y-Offset
#define REG_BG1HOFS *(u16*)0x04000014 //BG1 X-Offset
#define REG_BG1VOFS *(u16*)0x04000016 //BG1 Y-Offset
#define REG_BG2HOFS *(u16*)0x04000018 //BG2 X-Offset
#define REG_BG2VOFS *(u16*)0x0400001A //BG2 Y-Offset
#define REG_BG3HOFS *(u16*)0x0400001C //BG3 X-Offset
#define REG_BG3VOFS *(u16*)0x0400001E //BG3 Y-Offset
#define REG_BG2PA *(u16*)0x04000020 //BG2 Rotation/Scaling Paramater A
#define REG_BG2PB *(u16*)0x04000022 //BG2 Rotation/Scaling Paramater B
#define REG_BG2PC *(u16*)0x04000024 //BG2 Rotation/Scaling Paramater C
#define REG_BG2PD *(u16*)0x04000026 //BG2 Rotation/Scaling Paramater D
#define REG_BG2X *(u32*)0x04000028 //BG2 Reference Point X-Coordinate
#define REG_BG2Y *(u32*)0x0400002C //BG2 Reference Point Y-Coordinate
#define REG_BG3PA *(u16*)0x04000030 //BG3 Rotation/Scaling Paramater A
#define REG_BG3PB *(u16*)0x04000032 //BG3 Rotation/Scaling Paramater B
#define REG_BG3PC *(u16*)0x04000034 //BG3 Rotation/Scaling Paramater C
#define REG_BG3PD *(u16*)0x04000036 //BG3 Rotation/Scaling Paramater D
#define REG_BG3X *(u32*)0x04000038 //BG3 Reference Point X-Coordinate
#define REG_BG3Y *(u32*)0x0400003C //BG3 Reference Point Y-Coordinate
#define REG_WIN0H *(u16*)0x04000040 //Window 0 Horizontal Dimensions
#define REG_WIN1H *(u16*)0x04000042 //Window 1 Horizontal Dimensions
#define REG_WIN0V *(u16*)0x04000044 //Window 0 Vertical Dimensions
#define REG_WIN1V *(u16*)0x04000046 //Window 1 Vertical Dimensions
#define REG_WININ *(u16*)0x04000048 //Inside of Window 0 and 1
#define REG_WINOUT *(u16*)0x0400004A //Inside of OBJ Window and Outside of Windows
#define REG_MOSAIC *(u16*)0x0400004C //Mosaic Size
#define REG_UNKNOWN1 *(u16*)0x0400004E //Not Used
#define REG_BLDCNT *(u16*)0x04000050 //Color Special Effects Selection
#define REG_BLDALPHA_H	 *(u8*)0x04000052 //Alpha Blending Coefficient High
#define REG_BLDALPHA_L	 *(u8*)0x04000053 //Alpha Blending Coefficient Low
#define REG_BLDY *(u16*)0x04000054 //Brightness Coefficient
#define REG_UNKNOWN2 *(u16*)0x04000056 //Not Used
#define REG_SOUND1CNT_L  *(u16*)0x04000060 //Channel 1 Sweep Register
#define REG_SOUND1CNT_H  *(u16*)0x04000062 //Channel 1 Duty/Length/Envelope
#define REG_SOUND1CNT_X  *(u16*)0x04000064 //Channel 1 Frequency / Control
#define REG_UNKNOWN3 *(u16*)0x04000066 //Not Used
#define REG_SOUND2CNT_L *(u16*)0x04000068 //Channel 2 Duty/Length/Envelope
#define REG_UNKNOWN4 *(u16*)0x0400006A //Not Used
#define REG_SOUND2CNT_H *(u16*)0x0400006C //Channel 2 Frequency/Control
#define REG_UNKNOWN24 *(u16*)0x0400006E //Not Used
#define REG_SOUND3CNT_L  *(u16*)0x04000070 //Channel 3 Stop/Wave RAM Select
#define REG_SOUND3CNT_H  *(u16*)0x04000072 //Channel 3 Length/Volume
#define REG_SOUND3CNT_X  *(u16*)0x04000074 //Channel 3 Frequency / Control
#define REG_UNKNOWN5 *(u16*)0x04000076 //Not Used
#define REG_SOUND4CNT_L *(u16*)0x04000078 //Channel 4 Length/Envelope
#define REG_UNKNOWN6 *(u16*)0x0400007A //Not Used
#define REG_SOUND4CNT_H *(u16*)0x0400007C //Channel 4 Frequency/Control
#define REG_UNKNOWN7 *(u16*)0x0400007E //Not Used
#define REG_SOUNDCNT_L  *(u16*)0x04000080 //Control Stero/Volume/Enable
#define REG_SOUNDCNT_H  *(u16*)0x04000082 //Control Mixing/DMA Control
#define REG_SOUNDCNT_X  *(u16*)0x04000084 //Control Sound on/off
#define REG_UNKNOWN8 *(u16*)0x04000086 //Not Used
#define REG_SOUNDBIAS *(u16*)0x04000088 //Sound PWN Control ****CONTROLLED BY BIOS****
#define REG_UNKNOWN9 *(u16*)0x0400008A //Not Used
#define REG_SGWR0_L    *(vu16*)0x4000090		//???
#define REG_SGWR0_H    *(vu16*)0x4000092		//???
#define REG_WAVE_RAM1  *(vu32*)0x4000094		//???
#define REG_SGWR1_L    *(vu16*)0x4000094		//???
#define REG_SGWR1_H    *(vu16*)0x4000096		//???
#define REG_WAVE_RAM2  *(vu32*)0x4000098		//???
#define REG_SGWR2_L    *(vu16*)0x4000098		//???
#define REG_SGWR2_H    *(vu16*)0x400009A		//???
#define REG_WAVE_RAM3  *(vu32*)0x400009C		//???
#define REG_SGWR3_L    *(vu16*)0x400009C		//???
#define REG_SGWR3_H    *(vu16*)0x400009E		//???
#define REG_FIFO_A       *(vu32*)0x040000A0 //Channel A FIFO, Data 0-3
#define REG_FIFO_B       *(vu32*)0x040000A4 //Channel B FIFO, Data 0-3
#define REG_UNKNOWN10 *(u16*)0x040000A8 //Not Used
#define REG_DMA0SAD     *(u32*)0x40000B0	//DMA0 Source Address
#define REG_DMA0DAD     *(u32*)0x40000B4	//DMA0 Destination Address
#define REG_DMA0CNT     *(u32*)0x40000B8	//DMA0 Control (Amount)
#define REG_DMA0CNT_L   *(u16*)0x40000B8	//DMA0 Control Low Value
#define REG_DMA0CNT_H   *(u16*)0x40000BA	//DMA0 Control High Value
#define REG_DMA1SAD     *(u32*)0x40000BC	//DMA1 Source Address
#define REG_DMA1DAD     *(u32*)0x40000C0	//DMA1 Desination Address
#define REG_DMA1CNT     *(u32*)0x40000C4	//DMA1 Control (Amount)
#define REG_DMA1CNT_L   *(u16*)0x40000C4	//DMA1 Control Low Value
#define REG_DMA1CNT_H   *(u16*)0x40000C6	//DMA1 Control High Value
#define REG_DMA2SAD     *(u32*)0x40000C8	//DMA2 Source Address
#define REG_DMA2DAD     *(u32*)0x40000CC	//DMA2 Destination Address
#define REG_DMA2CNT     *(u32*)0x40000D0	//DMA2 Control (Amount)
#define REG_DMA2CNT_L   *(u16*)0x40000D0	//DMA2 Control Low Value
#define REG_DMA2CNT_H   *(u16*)0x40000D2	//DMA2 Control High Value
#define REG_DMA3SAD     *(u32*)0x40000D4	//DMA3 Source Address
#define REG_DMA3DAD     *(u32*)0x40000D8	//DMA3 Destination Address
#define REG_DMA3CNT     *(u32*)0x40000DC	//DMA3 Control (Amount)
#define REG_DMA3CNT_L   *(u16*)0x40000DC	//DMA3 Control Low Value
#define REG_DMA3CNT_H   *(u16*)0x40000DE	//DMA3 Control High Value
#define REG_UNKNOWN11 *(u16*)0x040000E0 // Not Used
#define REG_TM0CNT_L *(u16*)0x04000100 //Timer 0 Counter/Reload
#define REG_TM0CNT_H *(u16*)0x04000102 //Timer 0 Control
#define REG_TM1CNT_L *(u16*)0x04000104 //Timer 1 Counter/Reload
#define REG_TM1CNT_H *(u16*)0x04000106 //Timer 1 Control
#define REG_TM2CNT_L *(u16*)0x04000108 //Timer 2 Counter/Reload
#define REG_TM2CNT_H *(u16*)0x0400010A //Timer 2 Control
#define REG_TM3CNT_L *(u16*)0x0400010C //Timer 3 Counter/Reload
#define REG_TM3CNT_H *(u16*)0x0400010E //Timer 3 Control
#define REG_UNKNOWN12 *(u16*)0x04000110 // Not Used
#define REG_SIODATA32 *(u32*)0x04000120
#define REG_SIOMULTI0 *(u16*)0x04000120 //Data 0
#define REG_SIOMULTI1 *(u16*)0x04000122 //Data 1
#define REG_SIOMULTI2 *(u16*)0x04000124 //Data 2
#define REG_SIOMULTI3 *(u16*)0x04000126 //Data 3
#define REG_SIOCNT *(u16*)0x04000128 //SIO Control Register
#define REG_SIOMLT_SEND *(u16*)0x0400012A //SIO Data
#define REG_SIODATA8 *(u16*)0x0400012A //SIO Data
#define REG_UNKNOWN13 *(u16*)0x0400012C //Not Used
#define REG_KEYINPUT *(u16*)0x04000130 //Key Status
#define REG_KEYCNT *(u16*)0x04000132 //Key Interrupt Control
#define REG_RCNT *(u16*)0x04000134 //SIO Mode Select/General Purpose Data
#define REG_IR *(u16*)0x04000136 //Ancient - Infrared Register (Prototypes Only)
#define REG_UNKNOWN14  *(u16*)0x04000138 //Not Used
#define REG_JOYCNT *(u16*)0x04000140 //SIO Joy Bus Control
#define REG_UNKNOWN15  *(u16*)0x04000142 //Not Used
#define REG_JOY_RECV *(u32*)0x04000150 //SIO JOY Bus Recieve Data
#define REG_JOY_TRANS *(u32*)0x04000154 //SIO JOY Bus Transmit Data
#define REG_JOYSTAT *(u16*)0x04000158 //SIO JOY Bus Recieve Status
#define REG_UNKNOWN16  *(u16*)0x0400015A //Not Used
#define REG_IE *(u16*)0x04000200 //Interrupt Enable Register
#define REG_IF *(u16*)0x04000202 //Interrupt Request Flags / IRQ Acknowledge
#define REG_WAITCNT *(u16*)0x04000204 //Game Pak Waitstate Control
#define REG_UNKNOWN17  *(u16*)0x04000206 //Not Used
#define REG_IME *(u16*)0x04000208 //Interrupt Master Enable Register
#define REG_UNKNOWN18  *(u16*)0x0400020A //Not Used
#define REG_POSTFLG *(u8*)0x04000300 //Undocumented - Post Boot Flag
#define REG_HALTCNT *(u8*)0x04000301 //Undocumented - Power Down Control
#define REG_UNKNOWN19  *(u16*)0x04000302 //Not Used
#define REG_UNKNOWN20  *(u16*)0x04000410 //Undocumented - Purpose Unknown / Bug ??? 0FFh
#define REG_UNKNOWN21  *(u16*)0x04000411 //Not Used
#define REG_UNKNOWN22  *(u32*)0x04000800 //Undocumented - Internal Memory Control(R/W)
#define REG_UNKNOWN23  *(u16*)0x04000804 //Not Used

#define DMA_ENABLE		0x80000000
#define DMA_IMMEDIATE	0x00000000

#define DMA_16			0x00000000
#define DMA_32			0x04000000

#define BACKBUFFER 0x10
#define H_BLANK_OAM 0x20

#define KEY_A 1
#define KEY_B 2
#define KEY_SELECT 4
#define KEY_START 8
#define KEY_RIGHT 16
#define KEY_LEFT 32
#define KEY_UP 64
#define KEY_DOWN 128
#define KEY_R 256
#define KEY_L 512
#define KEY_ALL 0x03FF

#define KEYS        *(volatile u16*)0x04000130

#define keyDown(k)  (~KEYS & k)
#define KEY_ANY_PRESSED (keyDown(KEY_A))OR(keyDown(KEY_B))OR(keyDown(KEY_L))OR(keyDown(KEY_R))OR(keyDown(KEY_SELECT))OR(keyDown(KEY_START))OR(keyDown(KEY_UP))OR(keyDown(KEY_DOWN))OR(keyDown(KEY_LEFT))OR(keyDown(KEY_RIGHT))

#define	IWRAM		0x03000000
#define	EWRAM		0x02000000
#define	EWRAM_END	0x02040000
#define	SRAM		0x0E000000
#define	REG_BASE	0x04000000
/*Winodws*/
#define WIN0_ENABLE      0x2000
#define WINOBJ_ENABLE    0x8000
#define RIGHT(n)    (n)
#define LEFT(n)     (n) << 8
#define BOTTOM(n)   (n)
#define TOP(n)      (n) << 8

#define PI                   22/7
#define RADIAN(n)    (((float) n)/ (float) 180 * PI)

//Taken from HAM's mygba.h
#ifndef RGB_GET_R_VALUE
#define RGB_GET_R_VALUE(rgb)    ((rgb & 0x001f) << 3)
#endif
#ifndef RGB_GET_G_VALUE
#define RGB_GET_G_VALUE(rgb)    (((rgb >> 5) & 0x001f) << 3)
#endif
#ifndef RGB_GET_B_VALUE
#define RGB_GET_B_VALUE(rgb)    (((rgb >> 10) & 0x001f) << 3)
#endif

#define ACCESS_8(location)		*(volatile u8 *)  (location)
#define ACCESS_16(location)		*(volatile u16 *) (location)
#define ACCESS_32(location)		*(volatile u32 *) (location)
#define MEM_PAL_COL_PTR(x)		 (u16*) (0x05000000+(x<<1))	// Palette color pointer
#define MEM_PAL_OBJ_PTR(x)		 (u16*) (0x05000200+(x<<1))	// Palette color pointer
#define RGB(r,g,b) ((((b)>>3)<<10)+(((g)>>3)<<5)+((r)>>3))
//

#ifndef TRUE
#define TRUE 1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef NULL
#define NULL ((void *)0)
#endif

typedef struct tagOAMEntry {

    u16 attribute0;
    u16 attribute1;
    u16 attribute2;
    u16 attribute3;

} OAMEntry, *pOAMEntry;

//create the array of sprites (128 is the maximum)

typedef struct {

    u16 x;
    u16 y;
    u16 OAMSpriteNum;
    u16 *SpriteData;

} Sprite, *pSprite;

typedef struct tagRotData {

    u16 filler1[3];
    u16 pa;
    u16 filler2[3];
    u16 pb;
    u16 filler3[3];
    u16 pc;
    u16 filler4[3];
    u16 pd;

} RotData, *pRotData;

OAMEntry sprites[128];

typedef struct {                                                                //sound variables
    const unsigned char* song;                                                     //pointer to sound's data array
    int frequency;                                                                 //sound frequency
    int tic;                                                                       //increase up to sounds end
    int end;                                                                       //end of sound
} sounds;
sounds sound[25];
const double SIN[360];
const double COS[360];
const double RAD[360];
const unsigned short font_matrixBitmap[6080];
const unsigned short font_milkbottleTiles[3072];
const unsigned short font_milkbottlePal[16];
typedef void(*IntFn)(void);
struct IntTable {
    IntFn handler;
    u32 mask;
};
#define MAX_INTS	15
#define INT_VECTOR	*(IntFn *)(0x03007ffc)		// BIOS Interrupt vector
typedef enum irqMASKS {
    IRQ_VBLANK = (1 << 0),		/*!< vertical blank interrupt mask */
    IRQ_HBLANK = (1 << 1),		/*!< horizontal blank interrupt mask */
    IRQ_VCOUNT = (1 << 2),		/*!< vcount match interrupt mask */
    IRQ_TIMER0 = (1 << 3),		/*!< timer 0 interrupt mask */
    IRQ_TIMER1 = (1 << 4),		/*!< timer 1 interrupt mask */
    IRQ_TIMER2 = (1 << 5),		/*!< timer 2 interrupt mask */
    IRQ_TIMER3 = (1 << 6),		/*!< timer 3 interrupt mask */
    IRQ_SERIAL = (1 << 7),		/*!< serial interrupt mask */
    IRQ_DMA0 = (1 << 8),		/*!< DMA 0 interrupt mask */
    IRQ_DMA1 = (1 << 9),		/*!< DMA 1 interrupt mask */
    IRQ_DMA2 = (1 << 10),	/*!< DMA 2 interrupt mask */
    IRQ_DMA3 = (1 << 11),	/*!< DMA 3 interrupt mask */
    IRQ_KEYPAD = (1 << 12),	/*!< Keypad interrupt mask */
    IRQ_GAMEPAK = (1 << 13)		/*!< horizontal blank interrupt mask */
} irqMASK;
extern struct IntTable IntrTable[];

typedef struct GBFS_FILE {
    char magic[16];    /* "PinEightGBFS\r\n\032\n" */
    u32  total_len;    /* total length of archive */
    u16  dir_off;      /* offset in bytes to directory */
    u16  dir_nmemb;    /* number of files */
    char reserved[8];  /* for future use */
} GBFS_FILE;
typedef struct GBFS_ENTRY {
    char name[24];     /* filename, nul-padded */
    u32  len;          /* length of object in bytes */
    u32  data_offset;  /* in bytes from beginning of file */
} GBFS_ENTRY;
const GBFS_FILE *find_first_gbfs_file(const void *start);

typedef	struct {
    u32	reserved1[5];
    u8	handshake_data;
    u8	padding;
    u16	handshake_timeout;
    u8	probe_count;
    u8	client_data[3];
    u8	palette_data;
    u8	response_bit;
    u8	client_bit;
    u8	reserved2;
    u8	*boot_srcp;
    u8	*boot_endp;
    u8	*masterp;
    u8	*reserved3[3];
    u32	system_work2[4];
    u8	sendflag;
    u8	probe_target_bit;
    u8	check_wait;
    u8	server_type;
} MultiBootParam;

enum MULTIBOOT_MODES { MODE32_NORMAL, MODE16_MULTI, MODE32_2MHZ };

u32 hrt_MultiBoot(MultiBootParam *mp, u32 mode);
void hrt_InitInterrupt(void) __attribute__((deprecated));
void hrt_irqInit();
IntFn *hrt_SetInterrupt(irqMASK mask, IntFn function) __attribute__((deprecated));
IntFn *hrt_irqSet(irqMASK mask, IntFn function);
void hrt_EnableInterrupt(irqMASK mask) __attribute__((deprecated));
void hrt_irqEnable(int mask);
void hrt_DisableInterrupt(irqMASK mask) __attribute__((deprecated));
void hrt_irqDisable(int mask);
void hrt_IntrMain();
void hrt_EditBG(u8 bg, int x, int y, int x_scale, int y_scale, int angle); //Edits background attributes
void hrt_Diff8bitUnFilterWram(u32 source, u32 dest); //Decompresses Diff8bit to EWRAM
void hrt_Diff8bitUnFilterVram(u32 source, u32 dest); //Decompresses Diff8bit to VRAM
void hrt_Diff16bitUnFilter(u32 source, u32 dest); //Decompresses Diff16bit
void hrt_HuffUnComp(u32 source, u32 dest); //Decompresses Huff
void hrt_LZ77UnCompWRAM(u32 source, u32 dest); //LZ77 Decompresses to EWRAM
void hrt_LZ77UnCompVRAM(u32 source, u32 dest); //LZ77 Decompresses to VRAM
void hrt_RLUnCompVram(u32 source, u32 dest); //RLE Uncompresses
void hrt_InitSound(int a, int f, int e, u8* d);  //creates sound object
void hrt_PlaySoundFIFO(int s); //plays sound using DMA
void hrt_CopyOAM(); //Copies OBJ Attributes to OAM
void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset); //Creates a sprite
void hrt_LoadOBJPal(unsigned int * pal, u16 size); //Loads OBJ Palette
void hrt_LoadOBJGFX(unsigned int * gfx,int size); //loads OBJ GFX
void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale,s32 y_scale); //Scales and Rotates an object
void hrt_SetOBJXY(OAMEntry* sp, int x, int y); // Sets Position of a Sprite
void hrt_ResetOffset(u8 no); //Resets offset of gfx or pal data for BG or OBJ
void hrt_CloneOBJ(int ospr, int nspr); //Creates clone of sprite
void hrt_GlideSpritetoPos(int spr, int x1, int y1, int x2, int y2, u32 frames); //glides sprite to a position. WIP
void hrt_SaveInt(u16 offset, int value); //Saves to SRAM
int hrt_LoadInt(u16 offset); //Loads from SRAM
void hrt_DrawChar(int mode, int left, int top, char letter); //Draws text on Bitmap
void hrt_PrintOnBitmap(int left, int top, char *str); //Draws text on Bitmap
void hrt_Sleep(double i); //Sleeps
void hrt_SleepF(u32 frames); //sleeps for set amount of frames
void hrt_DrawPixel(int Mode, int x, int y, unsigned short color); //Draws pixel on screen
u16 hrt_GetPixel(u8 mode, int x, int y); //Gets pixel Color of screen
void hrt_CyclePalette(int start, int amount, int pal); //Cycles BG Palette
void hrt_LoadBGMap(u16* data, int length); //Loads BG Map
void hrt_LoadBGPal(u16* data, u16 length); //Loads BG Palette
void hrt_InvertPalette(int start, int amount, int pal); //Inverts Palette
void hrt_DrawRectangle(int r, int c, int width, int height, u16 color, int mode); //Draws rectangle
void hrt_FillScreen(u16 color, int mode); // fills screen with specified color
void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode); //Draws line of specified color
void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode); //Draws circle of specified color.
void hrt_ScanLines(u16 color, int time, int mode); //scanlines wipe
void hrt_LeftWipe(u16 color, int time, int mode);
void hrt_RightWipe(u16 color, int time, int mode);
void hrt_TopWipe(u16 color, int time, int mode);
void hrt_BottomWipe(u16 color, int time, int mode);
void hrt_CircleWipe(u16 color, int time, int mode);
void hrt_CoolScanLines(u16 color, int time, int mode);
u16 hrt_GetBGPalEntry(int slot);
u16 hrt_GetOBJPalEntry(int slot);
void hrt_SetBGPalEntry(int slot, u16 color);
void hrt_SetOBJPalEntry(int slot, u16 color);
void hrt_LoadBGTiles(u16* data, int length);
void hrt_ColdReset();
void hrt_SoftReset();
extern u32 hrt_GetBiosChecksum();
void hrt_Init(int mode);
void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode);
void hrt_SetFXLevel(u8 level);
void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2);
void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin);
void hrt_Assert(u8 error, char* func, int arg, char* desc);
void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions);
void hrt_LineWipe(u16 color, int time, u8 mode);
void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov);
double hrt_Distance(int x1, int y1, int x2, int y2);
double hrt_Slope(int x1, int y1, int x2, int y2);
void hrt_SetTile(u8 x, u8 y, int tileno);
void hrt_SetFXAlphaLevel(u8 src, u8 dst);
void hrt_DrawTextTile(int x, int y, char* str);
void hrt_InitTextTile();
void hrt_FillPalette(int paltype, u16 color);
void hrt_AGBPrint(const char *msg);
void *hrt_Memcpy(void *dest, const void *src, size_t len);
void hrt_VblankIntrWait();
void hrt_ColdReset();
void hrt_SoftReset();
void hrt_RegisterRamReset();
void hrt_Suspend();
void hrt_EZ4Exit();
void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start);
void hrt_SaveByte(int offset, u8 value);
u8 hrt_LoadByte(int offset);
void hrt_FlipBGBuffer();
const void *skip_gbfs_file(const GBFS_FILE *file);
const void *gbfs_get_obj(const GBFS_FILE *file, const char *name, u32 *len);
void *gbfs_copy_obj(void *dst, const GBFS_FILE *file, const char *name);
void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset);
int hrt_ConfigDMA(u8 dstoff, u8 srcoff, u8 repeat, u8 b32, u8 starttiming, u8 irq, u8 enable);
int JPEG_Match(const unsigned char *data, int length);
int JPEG_FrameHeader_Read(JPEG_FrameHeader *frame, const unsigned char **data, JPEG_Marker marker);
int JPEG_HuffmanTable_Read(JPEG_HuffmanTable *table, const unsigned char **data);
int JPEG_HuffmanTable_Skip(const unsigned char **data);
int JPEG_ScanHeader_Read(JPEG_ScanHeader *scan, const unsigned char **data);
int JPEG_Decoder_ReadHeaders(JPEG_Decoder *decoder, const unsigned char **data);
int JPEG_Decoder_ReadImage(JPEG_Decoder *decoder, const unsigned char **data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);
void JPEG_IDCT(JPEG_FIXED_TYPE *zz, signed char *chunk, int chunkStride);
int JPEG_DecompressImage(const unsigned char *data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);

#ifdef __cplusplus
}
#endif
#endif