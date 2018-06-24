//File: libheart.h - The NEW Definitive GBA Header File
//Date: June 2018
//Author: Sterophonick
//Derived from gba.h by eloist and agb_lib.h by me, Inspired by Hamlib's mygba.h, who da heck remembers that library amirite?
//This library is designed to make GBA Programming easy to do, and for everyone to be able to do it, not unlike HAMLib (rip 2001-2011 =( may god rest ur soul)
//This Library is Dedicated to Stevendog98, who is wanting to make GBA Games. This is to give him a head start on the GBA.
//This Library is going to be huge. It will probably be one of the best GBA Libraries in recent years.

/*In case some of you don't know, agb_lib.h was a shoddy library made by me.
 Development for it started around August of 2016, when I was in 6th grade (JEEBUS). 
 A lot of my old projects used this library, and it made it easier for a while. 
 This was until I found that including code and data in a header file was not a good idea.
 I was disappointed that HAMLib was not compatible with DevKitARM or DevKitAdvance,
 so I decided to make this library instead.
 I was also running out of ideas for functions, and I ended up with functions that would
 add and subract numbers. Just... yeah.
 It was not a good library.*/
 
 /* Please make some issues or pull requests on the source page of this library, so you
 can make some contributions or fixes to HeartLib. Support is greatly appreciated! */

//Some functions don't work yet so be patient!
/*
	List:
		Sprites moving in a specified direction
*/

/*
GBA Specs:
	CPU: ARM7TDMI RISC 16.78 Mhz
	RAM: 32kb internal, 256kb external
	ROM: 32 MB
	OAM: 128 Sprites with Affine transformation
	VRAM: 96 kb
	BIOS: 16kb
	Keys: 10
	DMA: 4 Channels
	Sound: 4 PSG Channels, 2 Direct Sound Channels, Mono on speaker, Stereo headphones.
	LCD: 240x160 15 bit BGR, 32768 Colors
*/

/*
  What's Included:
    **ALL** the GBA Register Definitions -- Including some undocumented ones
	Screen Wipes (Mode 3 at the moment)
	Sprites
	Affine Transformation - BG and OBJ
	Sound (Shoutouts to 3DSage)
	DMA
	Palettes
	Scrolling
	Compression
	SRAM
	Text (Mode 3 only at the moment)
	Interrupts
	Blending (Shoutouts to headspin)
	BIOS Calls
	AGBPrint (Shoutouts to LibGBA)
	GBFS (kudos to Damian Yerrick)
	Access To Undocumented Functions and Registers (Special Greetz to GBATek)
	Color Conversions (Shoutouts to Tubooboo)
	Timers
	Bitmaps
	Keys (Shoutouts to 3DSage)
	Screen Drawing
	PCX Decoding (Shoutouts to libGBA)
	Random Number Generation (Uses Merssene Twister method)
	MaxMod (Kudos to LibGBA)
	MBV2Lib (Greetz to LibGBA)
	Typedefs
	Defines for making those larger functions easier to understand.
	Real-Time Clock Stuff (Shoutouts to Dwedit)
	Mode 7?
	Exit to EZ4 (Shoutouts to Dwedit and GodBolt)
	aPlib
	Scrolling Map Edge Drawing
	JPEG Decoding for Serious image compression
	Some Nintendo DS BIOS functions

TODO:
		Exit to flashcart for other cards
		Finish Easy Build System
*/
#ifdef HRT_WITH_LIBHEART

#ifndef LIBHEART_H
#define LIBHEART_H

#define HRT_VERSION_MAJOR 0
#define HRT_VERSION_MINOR 98
#define HRT_BUILD_DATE "094606242018"

#ifdef  __cplusplus
#include <iostream>
#include <cstdlib>
#include <csignal>
#include <csetjmp>
#include <cstdarg>
#include <typeinfo>
#include <typeindex>
#include <type_traits>
#include <bitset>
#include <functional>
#include <utility>
#include <ctime>
#include <chrono>
#include <cstddef>
#include <initializer_list>
#include <tuple>
#include <any>
#include <optional>
#include <variant>
#include <new>
#include <memory>
#include <scoped_allocator>
#include <climits>
#include <cfloat>
#include <cstdint>
#include <cstdint>
#include <cinttypes>
#include <limits>
#include <exception>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdint.h>
#include <float.h>
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
#include <iso646.h>
#include <memory.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/fcntl.h>
#include <errno.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <_ansi.h>
#include <reent.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/timespec.h>
#include <sys/_timeval.h>
#include <sys/cdefs.h>

/*HeartLib Typedefs
These are used as shortened types.*/
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef unsigned int uint;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned long vu32;
typedef volatile unsigned long long vu64;
typedef volatile unsigned int vuint;

typedef volatile signed char vs8;
typedef volatile signed short vs16;
typedef volatile signed long vs32;
typedef volatile signed long long vs64;
typedef volatile signed int vsint;

typedef const signed char cs8;
typedef const signed short cs16;
typedef const signed long cs32;
typedef const signed long long cs64;
typedef const signed int csint;

typedef const volatile signed char cvs8;
typedef const volatile signed short cvs16;
typedef const volatile signed long cvs32;
typedef const volatile signed long long cvs64;
typedef const volatile signed int cvsint;

typedef const volatile unsigned char cvu8;
typedef const volatile unsigned short cvu16;
typedef const volatile unsigned long cvu32;
typedef const volatile unsigned long long cvu64;
typedef const volatile unsigned int cvuint;

typedef const unsigned char cu8;
typedef const unsigned short cu16;
typedef const unsigned long cu32;
typedef const unsigned long long cu64;
typedef const unsigned int cuint;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef signed int sint;

typedef void(*IntFn)(void);

typedef     s16     sfp16;  //1:7:8 fixed point
typedef     s32     sfp32;  //1:19:8 fixed point
typedef     u16     ufp16;  //8:8 fixed point
typedef     u32     ufp32;  //24:8 fixed point
typedef s32 FIXED;

typedef float dec8;
typedef double dec16;
typedef long double ldec16;

/*HeartLib System variables
DON'T TOUCH THESE*/
typedef struct
{
	u8 hrt_start;
	u32	hrt_offsetOAMData;
	u32 hrt_offsetOAMPal;
	u32 hrt_offsetBGMap;
	u32 hrt_offsetBGTile;
	u32 hrt_offsetBGPal;
	u8 __hrt_mmframeonvbl;
	u8 __copyoamonvbl;
	u8  __hrt_reset;
	u8 __hrt_rtc;
	u8 __hrt_tiledtext;
	u8 __hrt_tiledtext_color1;
	u8 __hrt_tiledtext_color2;
}gba_system;

#ifdef HRT_ADMIN
extern gba_system __hrt_system;
extern const double SIN[360];
extern const double COS[360];
extern const double RAD[360];
extern const unsigned char font_matrixBitmap[6080];
extern const unsigned short font_milkbottleTiles[3072];
extern const unsigned short font_milkbottlePal[16];
#endif

/*System Pointers*/
extern u16* VRAM;
extern u16* OAMData;
extern u16* BGPaletteMem;
extern u16* OBJPaletteMem;
extern u16* BGTileMem;
extern u8* SRAM;
extern u16* OAM;
extern u8* EWRAM;
extern u8* BIOS;
extern u8* IWRAM;
extern u8* MMIO;
extern u8* ROM0;
extern u8* ROM1;
extern u8* ROM2;
extern u8* EEPROM;

typedef struct ADGlobals
{
	const unsigned char *data;
	int last_sample;
	int last_index;
} ADGlobals;
typedef struct t_BGAffineSource {
     s32 x;				/*!< Original data's center X coordinate (8bit fractional portion)			*/
     s32 y;				/*!< Original data's center Y coordinate (8bit fractional portion)			*/
     s16 tX;			/*!< Display's center X coordinate																			*/
     s16 tY;			/*!< Display's center Y coordinate																			*/
     s16 sX;			/*!< Scaling ratio in X direction (8bit fractional portion)							*/
     s16 sY;			/*!< Scaling ratio in Y direction (8bit fractional portion)							*/
     u16 theta;		/*!< Angle of rotation (8bit fractional portion) Effective Range 0-FFFF	*/
} BGAffineSource;
typedef struct t_BGAffineDest {
     s16 pa;		/*!< Difference in X coordinate along same line	*/
     s16 pb;		/*!< Difference in X coordinate along next line	*/
     s16 pc;		/*!< Difference in Y coordinate along same line	*/
     s16 pd;		/*!< Difference in Y coordinate along next line	*/
     s32 x;			/*!< Start X coordinate													*/
     s32 y;			/*!< Start Y coordinate													*/
} BGAffineDest;
typedef struct t_ObjAffineSource {
     s16 sX;			/*!< Scaling ratio in X direction (8bit fractional portion)							*/
     s16 sY;			/*!< Scaling ratio in Y direction (8bit fractional portion)							*/
     u16 theta;		/*!< Angle of rotation (8bit fractional portion) Effective Range 0-FFFF	*/
} ObjAffineSource;
typedef struct t_ObjAffineDest {
     s16 pa;		/*!< Difference in X coordinate along same line */
     s16 pb;		/*!< Difference in X coordinate along next line */
     s16 pc;		/*!< Difference in Y coordinate along same line */
     s16 pd;		/*!< Difference in Y coordinate along next line */
} ObjAffineDest;

enum LCDC_IRQ {
    LCDC_VBL_FLAG = (1 << 0),
    LCDC_HBL_FLAG = (1 << 1),
    LCDC_VCNT_FLAG = (1 << 2),
    LCDC_VBL = (1 << 3),
    LCDC_HBL = (1 << 4),
    LCDC_VCNT = (1 << 5)
};
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
struct IntTable {
    IntFn handler;
    u32 mask;
};
extern struct IntTable IntrTable[];
typedef struct tagOAMEntry {

    u16 attribute0;
    u16 attribute1;
    u16 attribute2;
    u16 attribute3;

} OAMEntry, *pOAMEntry;
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

typedef struct _s16xy { s16 x, y; } s16xy;
typedef struct _Vector2 { s32 x, y; } Vector2;
typedef struct _MapLayer { u16 *map; Vector2 scroll; } MapLayer;
typedef struct _GameMap
{
	s16xy dimensions;
	const u16 *tileset; // Pointer to map file output from gfx2gba for the tileset bitmap 
	u8 numLayers; // Number of layers actually in use for the current map. Max 4 since that's all the hardware BGs 
	MapLayer layer[4];
} GameMap;
#define BG_SCRN_VRAM(n) ((u16*)(0x6000000 + ((n) << 11))) 
#define fptochar(x) ((x) >> 11) 
#define inttofp(x) ((x) << 8) 

#ifndef JPEG_OUTPUT_TYPE
#define JPEG_OUTPUT_TYPE unsigned short
#endif

typedef struct {
	u16 SrcNum;				// Source Data Byte Size
	u8  SrcBitNum;			// 1 Source Data Bit Number
	u8  DestBitNum;			// 1 Destination Data Bit Number
	u32 DestOffset:31;		// Number added to Source Data
	u32 DestOffset0_On:1;	// Flag to add/not add Offset to 0 Data
} BUP; //TOAD

typedef struct {
	u16 type;
	u16 stat;
	u32 freq;
	u32 loop;
	u32 size;
	s8 data[1];
} WaveData;

typedef struct {
	u8 Status;
	u8 reserved1;
	u8 RightVol;
	u8 LeftVol;
	u8 Attack;
	u8 Decay;
	u8 Sustain;
	u8 Release;
	u8 reserved2[24];
	u32 fr;
	WaveData *wp;
	u32 reserved3[6];
} SoundChannel;

typedef struct {
	u32 ident;
	vu8 DmaCount;
	u8 reverb;
	u8 maxchn;
	u8 masvol;
	u8 freq;
	u8 mode;
	u8 r2[6];
	u32 r3[16];
	SoundChannel vchn[12];
	s8 pcmbuf[1584*2];
} SoundArea;

//Logic Gates - So you don't have to remember the syntax for all the logic gates. It's a lifesaver.
#define NOT  !
#define AND  &&
#define NOR  !|
#define OR   |
#define NAND !&
#define XOR  ^
#define XNOR !^
//

//Screen Widths/Heights
#define GBA_SCREEN_WIDTH 240
#define GBA_SCREEN_HEIGHT 160
#define MODE_3_4_WIDTH 240
#define MODE_3_4_HEIGHT 160
#define MODE_4_VRAM_WIDTH 120
#define MODE_4_VRAM_HEIGHT 80
#define MODE_5_WIDTH  160
#define MODE_5_HEIGHT 120
//

//colors
#define COLOR_BLACK        0x0000
#define COLOR_MAROON       0x0010
#define COLOR_GREEN        0x0200
#define COLOR_OLIVE        0x0210
#define COLOR_NAVY         0x4000
#define COLOR_PURPLE       0x4010
#define COLOR_TEAL         0x4200
#define COLOR_GRAY         0x4210
#define COLOR_SILVER       0x6318
#define COLOR_RED          0x001F
#define COLOR_LIME         0x03E0
#define COLOR_YELLOW       0x03FF
#define COLOR_BLUE         0x7C00
#define COLOR_FUCHSIA      0x7C1F
#define COLOR_WHITE        0x7FFF
#define COLOR_MONEYGREEN   0x6378
#define COLOR_SKYBLUE      0x7B34
#define COLOR_CREAM        0x7BFF
#define COLOR_MEDGRAY      0x5294
#define COLOR_ORANGE 0x029F
#define COLOR_CYAN 0x7FE0
#define COLOR_ECRU 0x42D8
#define COLOR_MAUVE 0x5216
#define COLOR_PUCE 0x4E39
#define COLOR_CRIMSON 0x1C5B
#define COLOR_AZURE 0x7DE0
#define COLOR_CHARTREUSE 0x03EF
#define COLOR_TAWNY 0x0159
#define COLOR_BUFF 0x437E
#define COLOR_CINEREOUS 0x3E13

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

//Bits
#define BIT00  0x0001
#define BIT01  0x0002
#define BIT02  0x0004
#define BIT03  0x0008
#define BIT04  0x0010
#define BIT05  0x0020
#define BIT06  0x0040
#define BIT07  0x0080
#define BIT08  0x0100
#define BIT09  0x0200
#define BIT10 0x0400
#define BIT11 0x0800
#define BIT12 0x1000
#define BIT13 0x2000
#define BIT14 0x4000
#define BIT15 0x8000
#define BIT_SET(value,bit) ((value) & (bit))
#define NOT_BIT00  0xFFFE
#define NOT_BIT01  0xFFFD
#define NOT_BIT02  0xFFFB
#define NOT_BIT03  0xFFF7
#define NOT_BIT04  0xFFEF
#define NOT_BIT05  0xFFDF
#define NOT_BIT06  0xFFBF
#define NOT_BIT07  0xFF7F
#define NOT_BIT08  0xFEFF
#define NOT_BIT09  0xFDFF
#define NOT_BIT10 0xFBFF
#define NOT_BIT11 0xF7FF
#define NOT_BIT12 0xEFFF
#define NOT_BIT13 0xDFFF
#define NOT_BIT14 0xBFFF
#define NOT_BIT15 0x7FFF
#define NOT_BIT_SET(value,bit) (!((value) & (bit)))
//

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
#define REG_SOUNDBIAS *(u16*)0x04000088 //Sound PWM Control ****CONTROLLED BY BIOS****
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

#define REG_BGxCNT(x)                 (ACCESS_16(0x04000008+(x*2))) //Macro for a BG
#define REG_BGxHOFS(x)                    (ACCESS_16(0x0400000A+(x*4))) //macro for a bg
#define REG_BGxVOFS(x)                    (ACCESS_16(0x0400000B+(x*4))) //macro for a bg
#define REG_DMAxSAD(x)                    (ACCESS_32(0x040000B0+(x*0x0C))) //Macro for a DMA Source
#define REG_DMAxDAD(x)                    (ACCESS_32(0x040000B4+(x*0x0C))) //Macro for a DMA Destination
#define REG_TMxCNT_L(x)                 (ACCESS_16(0x04000100+(x*4)))
#define REG_TMxCNT_H(x)                 (ACCESS_16(0x04000102+(x*4)))

//keys
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
//
#define	REG_BASE	0x04000000
#define RIGHT(n)    (n)
#define LEFT(n)     (n) << 8
#define BOTTOM(n)   (n)
#define TOP(n)      (n) << 8
#define PI                   3.14159265359
#define RADIAN(n)    (((float) n)/ (float) 180 * PI)

//Taken from HAM's mygba.h
#define FIXED s32
#define ACCESS_8(location)		*(volatile u8 *)  (location)
#define ACCESS_16(location)		*(volatile u16 *) (location)
#define ACCESS_32(location)		*(volatile u32 *) (location)
#define MEM_PAL_COL_PTR(x)		 (u16*) (0x05000000+(x<<1))	// Palette color pointer
#define MEM_PAL_OBJ_PTR(x)		 (u16*) (0x05000200+(x<<1))	// Palette color pointer
#define SIZEOF_8BIT(x)          (sizeof(x))
#define SIZEOF_16BIT(x)         (sizeof(x)/2)
#define SIZEOF_32BIT(x)         (sizeof(x)/4)

////Conversions
#define CONV_U8_TO_UFP16(n)     ((ufp16)(n<<8))
#define CONV_U8_TO_UFP32(n)     ((ufp32)(n<<8))
#define CONV_U16_TO_UFP32(n)    ((ufp32)(n<<8))
#define CONV_S8_TO_SFP16(n)     ((sfp16)(n<<8))
#define CONV_S8_TO_SFP32(n)     ((sfp32) ( ((n & 0x7F)<<8) | ((n & 0x80)<<24) ) )
#define CONV_S16_TO_SFP32(n)    ((sfp32)((n) << 16))

#define CONV_UFP16_TO_U8(n)     ((u8)((n)>>8))
#define CONV_UFP32_TO_U8(n)     ((u8)((n)>>8))
#define CONV_UFP32_TO_U16(n)    ((u16)((n)>>8))
#define CONV_SFP16_TO_S8(n)     ((s8)((n)>>8))
#define CONV_SFP32_TO_S8(n)     ((s8) (((n) & 0x7F0000)>>16)   | (((n) & 0x80000000)>>24))
#define CONV_SFP32_TO_S16(n)    ((s16)((n) >> 16))

#define CONV_FLOAT_TO_SFP16(n)  ((sfp16)((n)*256))
#define CONV_FLOAT_TO_SFP32(n)  ((sfp32)((n)*65536))
////
//

#define HRT_EWRAM_DATA __attribute__((section(".ewram")))
#define HRT_IWRAM_DATA __attribute__((section(".iwram")))
#define HRT_EWRAM_BSS __attribute__((section(".sbss")))
#define HRT_EWRAM_CODE __attribute__((section(".ewram"), long_call))
#define HRT_IWRAM_CODE __attribute__((section(".iwram"), long_call))
#define HRT_ALIGN(m)	__attribute__((aligned (m)))

#define MAX_INTS	15
#define INT_VECTOR	*(IntFn *)(0x03007ffc)		// BIOS Interrupt vector
#define TRUE 1
#define FALSE 0
#define NULL ((void *)0)

//Systemcall
#if	defined	( __thumb__ )
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"\n" :::  "r0", "r1", "r2", "r3")
#else
#define	hrt_SystemCall(Number)	 __asm ("SWI	  "#Number"	<< 16\n" :::"r0", "r1", "r2", "r3")
#endif
//

//Maxmod
typedef unsigned int	mm_word;
typedef unsigned short	mm_hword;
typedef unsigned char	mm_byte;
typedef unsigned short	mm_sfxhand;
typedef unsigned char	mm_bool;
typedef void*			mm_addr;
typedef void*			mm_reg;
typedef enum {
    MM_MODE_A,
    MM_MODE_B,
    MM_MODE_C
} mm_mode_enum;
typedef enum {
    MM_STREAM_8BIT_MONO = 0x0,
    MM_STREAM_8BIT_STEREO = 0x1,
    MM_STREAM_16BIT_MONO = 0x2,
    MM_STREAM_16BIT_STEREO = 0x3,
} mm_stream_formats;
typedef mm_word(*mm_callback)(mm_word msg, mm_word param);
typedef mm_word(*mm_stream_func)(mm_word length, mm_addr dest, mm_stream_formats format);
typedef enum {
    MMRF_MEMORY = 0x01,
    MMRF_DELAY = 0x02,
    MMRF_RATE = 0x04,
    MMRF_FEEDBACK = 0x08,
    MMRF_PANNING = 0x10,
    MMRF_LEFT = 0x20,
    MMRF_RIGHT = 0x40,
    MMRF_BOTH = 0x60,
    MMRF_INVERSEPAN = 0x80,
    MMRF_NODRYLEFT = 0x100,
    MMRF_NODRYRIGHT = 0x200,
    MMRF_8BITLEFT = 0x400,
    MMRF_16BITLEFT = 0x800,
    MMRF_8BITRIGHT = 0x1000,
    MMRF_16BITRIGHT = 0x2000,
    MMRF_DRYLEFT = 0x4000,
    MMRF_DRYRIGHT = 0x8000
} mm_reverbflags;
typedef enum {
    MMRC_LEFT = 1,
    MMRC_RIGHT = 2,
    MMRC_BOTH = 3
} mm_reverbch;
typedef struct mmreverbcfg {
    mm_word				flags;
    mm_addr				memory;
    mm_hword			delay;
    mm_hword			rate;
    mm_hword			feedback;
    mm_byte				panning;
} mm_reverb_cfg;
typedef enum {
    MM_PLAY_LOOP,
    MM_PLAY_ONCE
} mm_pmode;
typedef enum {
    MM_MIX_8KHZ,
    MM_MIX_10KHZ,
    MM_MIX_13KHZ,
    MM_MIX_16KHZ,
    MM_MIX_18KHZ,
    MM_MIX_21KHZ,
    MM_MIX_27KHZ,
    MM_MIX_31KHZ
} mm_mixmode;
typedef enum {
    MM_TIMER0,
    MM_TIMER1,
    MM_TIMER2,
    MM_TIMER3
} mm_stream_timer;
typedef struct t_mmdssample {
    mm_word		loop_start;
    union {
        mm_word		loop_length;
        mm_word		length;
    };
    mm_byte		format;
    mm_byte		repeat_mode;
    mm_hword	base_rate;
    mm_addr		data;
} mm_ds_sample;
typedef struct t_mmsoundeffect {
    union {
        mm_word id;
        mm_ds_sample* sample;
    };
    mm_hword rate;
    mm_sfxhand handle;
    mm_byte	volume;
    mm_byte	panning;
} mm_sound_effect;
typedef struct t_mmgbasystem {
    mm_mixmode	mixing_mode;
    mm_word		mod_channel_count;
    mm_word		mix_channel_count;
    mm_addr		module_channels;
    mm_addr		active_channels;
    mm_addr		mixing_channels;
    mm_addr		mixing_memory;
    mm_addr		wave_memory;
    mm_addr		soundbank;
} mm_gba_system;
typedef struct t_mmdssystem {
    mm_word		mod_count;
    mm_word		samp_count;
    mm_word*	mem_bank;
    mm_word		fifo_channel;
} mm_ds_system;
typedef struct t_mmstream {
    mm_word sampling_rate;
    mm_word buffer_length;
    mm_stream_func callback;
    mm_word format;
    mm_word timer;
    mm_bool manual;
} mm_stream;
typedef struct t_mmlayer {
    mm_byte	tick;
    mm_byte	row;
    mm_byte	position;
    mm_byte	nrows;
    mm_byte	global_volume;
    mm_byte	speed;
    mm_byte	active;
    mm_byte	bpm;
} mm_modlayer;
typedef struct tmm_voice {
    mm_addr		source;
    mm_word		length;
    mm_hword	loop_start;
    mm_hword	timer;
    mm_byte		flags;
    mm_byte		format;
    mm_byte		repeat;
    mm_byte		volume;
    mm_byte		divider;
    mm_byte		panning;
    mm_byte		index;
    mm_byte		reserved[1];
} mm_voice;
enum {
    MMVF_FREQ = 2,
    MMVF_VOLUME = 4,
    MMVF_PANNING = 8,
    MMVF_SOURCE = 16,
    MMVF_STOP = 32
};
#define MM_MIXLEN_8KHZ		544
#define MM_MIXLEN_10KHZ		704
#define MM_MIXLEN_13KHZ		896
#define MM_MIXLEN_16KHZ		1056
#define MM_MIXLEN_18KHZ 	1216
#define MM_MIXLEN_21KHZ 	1408
#define MM_MIXLEN_27KHZ		1792
#define MM_MIXLEN_31KHZ		2112
#define MM_SIZEOF_MODCH		40
#define MM_SIZEOF_ACTCH		28
#define MM_SIZEOF_MIXCH		24
#define MMCB_SONGMESSAGE	0x2A
#define MMCB_SONGFINISHED	0x2B
extern mm_byte	mp_mix_seg;
extern mm_word	mp_writepos;

#define mmCreateEffect(name, id, rate, handle, volume, panning)       mm_sound_effect (name) = { \
{ id} ,	\
(int)(1.0f * (1 << 10)), \
0,		\
255,	\
255, \
} 

//

//mbv2.h - libgba
#ifdef HRT_USE_MBV2LIB
#define mbv_dprintf		mbv2_dprintf
#define mbv_dfprintf	mbv2_dfprintf
#define mbv_dputchar	mbv2_dputchar
#define mbv_dgetch		mbv2_dgetch
#define mbv_dkbhit		mbv2_dkbhit
#define mbv_dfopen		mbv2_dfopen
#define mbv_dfclose		mbv2_dfclose
#define mbv_dfgetc		mbv2_dfgetc
#define mbv_dfputc		mbv2_dfputc
#define mbv_drewind		mbv2_drewind
#define __DOUTBUFSIZE	256
#define __FINBUFSIZE	256
#define __KINBUFSIZE	64
#define __ESCCHR		27
#define __ESC_NADA				0
#define __ESC_ESCCHR			1
#define __ESC_FOPEN				2
#define __ESC_FCLOSE			3
#define __ESC_FGETC				4
#define __ESC_FPUTC				5
#define __ESC_REWIND			6
#define __ESC_FPUTC_PROCESSED	7
#define __ESC_KBDCHR 			8
#define SIO_8BIT		0x0000	// Normal 8-bit communication mode
#define SIO_32BIT		0x1000	// Normal 32-bit communication mode
#define SIO_MULTI		0x2000	// Multi-play communication mode
#define SIO_UART		0x3000	// UART communication mode
#define SIO_IRQ			0x4000	// Enable serial irq
#define SIO_9600		0x0000
#define SIO_38400		0x0001
#define SIO_57600		0x0002
#define SIO_115200		0x0003
#define SIO_CLK_INT		(1<<0)	// Select internal clock
#define SIO_2MHZ_CLK	(1<<1)	// Select 2MHz clock
#define SIO_RDY			(1<<2)	// Opponent SO state
#define SIO_SO_HIGH		(1<<3)	// Our SO state
#define SIO_START		(1<<7)
#define R_NORMAL		0x0000
#define R_MULTI			0x0000
#define R_UART			0x0000
#define R_GPIO			0x8000
#define	GPIO_SC			0x0001	// Data
#define	GPIO_SD			0x0002
#define	GPIO_SI			0x0004
#define	GPIO_SO			0x0008
#define	GPIO_SC_IO		0x0010	// Select I/O
#define	GPIO_SD_IO		0x0020
#define	GPIO_SI_IO		0x0040
#define	GPIO_SO_IO		0x0080
#define	GPIO_SC_INPUT	0x0000	// Input setting
#define GPIO_SD_INPUT	0x0000
#define	GPIO_SI_INPUT	0x0000
#define	GPIO_SO_INPUT	0x0000
#define	GPIO_SC_OUTPUT	0x0010	// Output setting
#define	GPIO_SD_OUTPUT	0x0020
#define	GPIO_SI_OUTPUT	0x0040
#define	GPIO_SO_OUTPUT	0x0080
#define REG_SIOMLT_RECV	*(vu16*)(REG_BASE + 0x120)	// Multi-play SIO Receive Data
#define REG_HS_CTRL		*(vu16*)(REG_BASE + 0x140)	// SIO JOY Bus Control
#define REG_JOYRE		*(vu32*)(REG_BASE + 0x150)	// SIO JOY Bus Receive Data
#define REG_JOYRE_L		*(vu16*)(REG_BASE + 0x150)
#define REG_JOYRE_H		*(vu16*)(REG_BASE + 0x152)
#define REG_JOYTR		*(vu32*)(REG_BASE + 0x154)	// SIO JOY Bus Transmit Data
#define REG_JOYTR_L		*(vu16*)(REG_BASE + 0x154)
#define REG_JOYTR_H		*(vu16*)(REG_BASE + 0x156)
#define REG_JSTAT		*(vu16*)(REG_BASE + 0x158)	// SIO JOY Bus Receive Status
#define R_JOYBUS		0xC000
#endif
//eof

const GBFS_FILE *find_first_gbfs_file(const void *start);

/*Function helpers
These are for the functions with a lot of
 arguments, and serve really good as a way
 of simplifying everything.*/
#define OBJ_SIZE_8X8 0
#define OBJ_SIZE_16X16 1
#define OBJ_SIZE_32X32 2
#define OBJ_SIZE_64X64 3
#define OBJ_SHAPE_NORMAL 0
#define OBJ_SHAPE_WIDE 1
#define OBJ_SHAPE_TALL 2
#define OBJ_SHAPE_PROHIBITED 3
#define OBJ_AFFINE_ENABLE 1
#define OBJ_AFFINE_DISABLE 0
#define OBJ_HFLIP_ENABLE 1
#define OBJ_HFLIP_DISABLE 0
#define OBJ_VFLIP_ENABLE 1
#define OBJ_VFLIP_DISABLE 0
#define OBJ_DOUBLESIZE_ENABLE 1
#define OBJ_DOUBLESIZE_DISABLE 0
#define OBJ_PAL_16 0
#define OBJ_PAL_256 1
#define OBJ_MODE_NORMAL 0
#define OBJ_MODE_ALPHA 1
#define OBJ_MODE_WINDOW 2
#define OBJ_MODE_PROHIBITED 3
#define OBJ_MOSAIC_ENABLE 1
#define OBJ_MOSAIC_DISABLE 0

#define FX_TARGET1_BG0_ENABLE 1
#define FX_TARGET1_BG0_DISABLE 0
#define FX_TARGET1_BG1_ENABLE 1
#define FX_TARGET1_BG1_DISABLE 0
#define FX_TARGET1_BG2_ENABLE 1
#define FX_TARGET1_BG2_DISABLE 0
#define FX_TARGET1_BG3_ENABLE 1
#define FX_TARGET1_BG3_DISABLE 0
#define FX_TARGET1_OBJ_ENABLE 1
#define FX_TARGET1_OBJ_DISABLE 0
#define FX_TARGET1_BACKDROP_ENABLE 1
#define FX_TARGET1_BACKDROP_DISABLE 0
#define FX_MODE_NONE 0
#define FX_MODE_ALPHA 1
#define FX_MODE_BRIGHTEN 2
#define FX_MODE_DARKEN 3
#define FX_TARGET2_BG0_ENABLE 1
#define FX_TARGET2_BG0_DISABLE 0
#define FX_TARGET2_BG1_ENABLE 1
#define FX_TARGET2_BG1_DISABLE 0
#define FX_TARGET2_BG2_ENABLE 1
#define FX_TARGET2_BG2_DISABLE 0
#define FX_TARGET2_BG3_ENABLE 1
#define FX_TARGET2_BG3_DISABLE 0
#define FX_TARGET2_OBJ_ENABLE 1
#define FX_TARGET2_OBJ_DISABLE 0
#define FX_TARGET2_BACKDROP_ENABLE 1
#define FX_TARGET2_BACKDROP_DISABLE 0

#define DSP_MODE_0 0
#define DSP_MODE_1 1
#define DSP_MODE_2 2
#define DSP_MODE_3 3
#define DSP_MODE_4 4
#define DSP_MODE_5 5
#define DSP_CGB_ENABLE 1
#define DSP_FRAMESELECT_ENABLE 1
#define DSP_FRAMESELECT_DISABLE 0
#define DSP_UNLOCKED_HBLANK_ENABLE 1
#define DSP_UNLOCKED_HBLANK_DISABLE 0
#define DSP_OBJ_MAP_1D 1
#define DSP_OBJ_MAP_2D 0
#define DSP_BG0_ENABLE 1
#define DSP_BG0_DISABLE 0
#define DSP_BG1_ENABLE 1
#define DSP_BG1_DISABLE 0
#define DSP_BG2_ENABLE 1
#define DSP_BG2_DISABLE 0
#define DSP_BG3_ENABLE 1
#define DSP_BG3_DISABLE 0
#define DSP_OBJ_ENABLE 1
#define DSP_OBJ_DISABLE 0
#define DSP_WIN0_ENABLE 1
#define DSP_WIN0_DISABLE 0
#define DSP_WIN1_ENABLE 1
#define DSP_WIN1_DISABLE 0
#define DSP_OBJWIN_ENABLE 1
#define DSP_OBJWIN_DISABLE 0

#define PAL_BG 0
#define PAL_OBJ 1

#define OFF_OAMDATA 0
#define OFF_OAMPAL 1
#define OFF_BGMAP 2
#define OFF_BGPAL 3
#define OFF_BGTILE 4

#define BGXCNT_SIZE_256X256 0
#define BGXCNT_SIZE_512X256 1
#define BGXCNT_SIZE_256X512 2
#define BGXCNT_SIZE_512X512 3

#define DMA_INCREMENT 0
#define DMA_DECREMENT 1
#define DMA_FIXED 2
#define DMA_INC_AND_RELOAD 3

#define DMA_TIMING_IMMEDIATE 0
#define DMA_TIMING_VBLANK 1
#define DMA_TIMING_HBLANK 2
#define DMA_TIMING_AUDIOFIFO 3

#define BG_0            (0)
#define BG_1            (1)
#define BG_2            (2)
#define BG_3            (3)

#define RRR_CLEAR_EWRAM_ENABLE 1
#define RRR_CLEAR_EWRAM_DISABLE 0
#define RRR_CLEAR_IWRAM_ENABLE 1
#define RRR_CLEAR_IWRAM_DISABLE 0
#define RRR_CLEAR_PALETTE_ENABLE 1
#define RRR_CLEAR_PALETTE_DISABLE 0
#define RRR_CLEAR_VRAM_ENABLE 1
#define RRR_CLEAR_VRAM_DISABLE 0
#define RRR_CLEAR_OAM_ENABLE 1
#define RRR_CLEAR_OAM_DISABLE 0
#define RRR_CLEAR_SIO_ENABLE 1
#define RRR_CLEAR_SIO_DISABLE 0
#define RRR_CLEAR_SOUND_ENABLE 1
#define RRR_CLEAR_SOUND_DISABLE 0
#define RRR_CLEAR_ALL_OTHER_ENABLE 1
#define RRR_CLEAR_ALL_OTHER_DISABLE 0

#define OBJAFF_OUTPUT_CONTINUOUS 2
#define OBJAFF_OUTPUT_OAM 8

#define NDS_CRC_INITIAL_DEFAULT 0xFFFF

#define CUSTOMHALT_HALT 0x00
#define CUSTOMHALT_GBA_STOP 0x80
#define CUSTOMHALT_NDS_HALT 0x80
#define CUSTOMHALT_NDS_SLEEP 0xC0

#define BIOSChecksum_UNKNOWN 0x00000000
#define BIOSChecksum_GBA 0xBAAE187f
#define BIOSChecksum_NDS 0xBAAE1880
//

///////////////////////////FUNCTIONS////////////////////////////
// These functions will allow the user control over objects, sound,   //
//// registers, memory, bitmaps, palettes, and many other things.   ////
///////////////////////////////////////////////////////////////
static inline u32 hrt_GetBiosChecksum(void)
{
    register u32 result;
#if   defined   ( __thumb__ )
    __asm ("SWI   0x0d\nmov %0,r0\n" :  "=r"(result) :: "r1", "r2", "r3");
#else
    __asm ("SWI   0x0d<<16\nmov %0,r0\n" : "=r"(result) :: "r1", "r2", "r3");
#endif
    return result;
}//Returns BIOS Checksum. Return value differs if you are playing on a Prototype GBA, Release GBA, or a Nintendo DS.
void hrt_irqInit(void); //Initialize Interrupts
IntFn *hrt_irqSet(irqMASK mask, IntFn function); //Set Interrupt Function
void hrt_irqEnable(int mask); //Enable Interrupt
void hrt_irqDisable(int mask); //Disable Interrupt
void hrt_Diff8bitUnFilterWram(u32 source, u32 dest); //Decompresses Diff8bit to EWRAM
void hrt_Diff8bitUnFilterVram(u32 source, u32 dest); //Decompresses Diff8bit to VRAM
void hrt_Diff16bitUnFilter(u32 source, u32 dest); //Decompresses Diff16bit
void hrt_HuffUnComp(u32 source, u32 dest); //Decompresses Huff
void hrt_LZ77UnCompWRAM(u32 source, u32 dest); //LZ77 Decompresses to EWRAM
void hrt_LZ77UnCompVRAM(u32 source, u32 dest); //LZ77 Decompresses to VRAM
void hrt_RLUnCompVram(u32 source, u32 dest); //RLE Uncompresses
void hrt_CopyOAM(void); //Copies OBJ Attributes to OAM
void hrt_CreateOBJ(u8 spr, u8 stx, u8 sty, u8 size, u8 affine, u8 hflip, u8 vflip, u8 shape, u8 dblsize, u8 mosaic, u8 pal, u8 color, u8 mode, u8 priority, u32 offset); //Creates a sprite
void hrt_LoadOBJPal(unsigned int * pal, u16 size); //Loads OBJ Palette
void hrt_LoadOBJGFX(unsigned int * gfx,int size); //loads OBJ GFX
void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale,s32 y_scale); //Scales and Rotates an object with the affine flag set to 1.
void hrt_SetOBJXY(u8 spr, s16 x, s16 y); // Sets Position of a Sprite
void hrt_SetOffset(u8 no, u32 amount); //Sets offset for bg or obj gfx, tile, or pal data
u32 hrt_GetOffset(u8 no); //Returns the offset of bg or obj gfx data.
void hrt_CloneOBJ(int ospr, int nspr); //Creates clone of sprite
void hrt_DrawChar(int mode, int left, int top, char letter); //Draws text on Bitmap
void hrt_PrintOnBitmap(int left, int top, char *str, ...); //Draws text on Bitmap
void hrt_SleepF(u32 frames); //sleeps for set amount of frames
void hrt_DrawPixel(int Mode, int x, int y, unsigned short color); //Draws pixel on screen
u16 hrt_GetPixel(u8 mode, int x, int y); //Gets pixel Color of screen
void hrt_CyclePalette(int start, int amount, int pal); //Cycles BG Palette
void hrt_LoadBGMap(u16* data, int length); //Loads BG Map
void hrt_LoadBGPal(u16* data, u16 length); //Loads BG Palette
void hrt_InvertPalette(int start, int amount, int pal); //Inverts Palette
void hrt_DrawRectangle(int r, int c, int width, int height, u16 color, int mode); //Draws rectangle
void hrt_FillScreen(u16 color); // fills screen with specified color
void hrt_DrawLine(int x1, int y1, int x2, int y2, unsigned short color, int mode); //Draws line of specified color
void hrt_DrawCircle(int xCenter, int yCenter, int radius, u16 color, int mode); //Draws circle of specified color.
void hrt_ScanLines(u16 color, int time, int mode); //scanlines wipe
void hrt_LeftWipe(u16 color, int time, int mode); //Wipe from Left
void hrt_RightWipe(u16 color, int time, int mode); //Wipe from right
void hrt_TopWipe(u16 color, int time, int mode); //Wipe from Top
void hrt_BottomWipe(u16 color, int time, int mode); //Wipe from Bottom
void hrt_CircleWipe(u16 color, int time, int mode); //Circle wipe -- beroken for now.
void hrt_CoolScanLines(u16 color, int time, int mode); //Cooler scanlines, acts funny on mGBA.
u16 hrt_GetBGPalEntry(int slot); //Returns Color of BG Palette Entry
u16 hrt_GetOBJPalEntry(int slot); //Returns Color of OBJ Palette Entry
void hrt_SetBGPalEntry(int slot, u16 color); //Sets color of BG Palette Entry
void hrt_SetOBJPalEntry(int slot, u16 color); //Sets color of OBJ Palette Entry
void hrt_LoadBGTiles(u16* data, int length); //Loads BG Tiles into VRAM, at Tile slot 1.
void hrt_ColdReset(void); //Restarts the console -- Undocumented BIOS Call
void hrt_SoftReset(void); //Restarts from ROM.
void hrt_Init(void); //MUST BE EXECUTED BEFORE USING THIS LIBRARY.
void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode); //Copies from DMA
void hrt_SetFXLevel(u8 level); //Sets BLDY level
void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2); //Sets BLDCNT Mode
void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin); //Sets REG_DISPCNT, but it is a lot clearer what you have to do.
void hrt_Assert(char* func, int arg, char* desc); //Error message
void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions); //Configures BG
void hrt_LineWipe(u16 color, int time, u8 mode); //Wipe from hrt_DrawLine
void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov); //Sets Mosaic Level -- Not Tested Yet.
s32 hrt_Distance(int x1, int y1, int x2, int y2); //Returns distance between 2 different points
s32 hrt_Slope(int x1, int y1, int x2, int y2); //Returns slope between 2 different points
void hrt_SetTile(u8 x, u8 y, int tileno); //Sets a specific tile to a given value.
void hrt_SetFXAlphaLevel(u8 src, u8 dst); //Sets REG_BLDALPHA
void hrt_FillPalette(int paltype, u16 color); //Fills BG or OBJ palette witha specified color.
void hrt_AGBPrint(const char *msg); //hrt_AGBPrint is interesting. Using this will make the ROM put a message into the output log if AGBPrint is enabled on VisualBoyAdvance. I found a technique that doesn't crash on hardware or other emulators.
void *hrt_Memcpy(void *dest, const void *src, size_t len); //Copies Memory from one place to another.
void hrt_VblankIntrWait(void); //Waits for Vblank Interrupt.
void hrt_Suspend(void); //Suspends the console. Unfinished.
void hrt_EZ4Exit(void); //Exits to Ez-Flash IV Menu.
void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start); //Configures a Timer.
void hrt_SaveByte(int offset, u8 value); //Copies a byte to SRAM at a given location
u8 hrt_LoadByte(int offset); //Loads a byte from SRAM at a given address
void hrt_FlipBGBuffer(void); //Flips FrontBuffer and BackBuffer in mode 4.
const void *skip_gbfs_file(const GBFS_FILE *file); //GBFS Stuff
const void *gbfs_get_obj(const GBFS_FILE *file, const char *name, u32 *len); //GBFS Stuff
void *gbfs_copy_obj(void *dst, const GBFS_FILE *file, const char *name); //GBFS Stuff
void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset); //Configures SOUNDCNT
int hrt_ConfigDMA(u8 dstoff, u8 srcoff, u8 repeat, u8 b32, u8 starttiming, u8 irq, u8 enable); //Returns a hex value for the specific operands.
void hrt_DecodePCX(const u8 *PCXBuffer, u16 *ScreenAddr, u16 *Palette); //Decodes PCX File and Copies data to specified locations. Usually VRAM and BGPaletteMem
void hrt_SeedRNG(u32 seed); //Seeds the RNG. Think of it like in Minecraft, where you can type in a "seed" for the world generator before creating a world, and based on that seed, the world will generate accordingly to the game's RNG.
u32 hrt_ReloadRNG(void); //Reloads RNG.
u32 hrt_CreateRNG(void); //Creates RNG Value. You can change the type of return value in your main.c
void mmInitDefault(mm_addr soundbank, mm_word number_of_channels); //Initializes Defualt soundbank in MaxMod
void mmInit(mm_gba_system* setup); //Initializes Maxmod
void mmVBlank(void); //MaxMod Vblank
void mmSetVBlankHandler(void* function); //Sets Vblank function handler for MaxMod
void mmSetEventHandler(mm_callback handler); //Sets event handler for MaxMod
void mmFrame(void) __attribute((long_call)); //MaxMod frame
void mmStart(mm_word id, mm_pmode mode); //Starts Maxmod
void mmPause(void); //Pauses all sound from MaxMod
void mmResume(void); //Resumes MaxMod Sound
void mmStop(void); //Stops all sound from MaxMod
void mmPosition(mm_word position); //Sets position of sound in MaxMod?
int  mmActive(void); //Returns active statues for MaxMod
void mmJingle(mm_word module_ID); //???
int  mmActiveSub(void); //???
void mmSetModuleVolume(mm_word volume); //Sets modplayer volume
void mmSetJingleVolume(mm_word volume); //Sets jingle volume?
void mmSetModuleTempo(mm_word tempo); //Sets Tempo of Module
void mmSetModulePitch(mm_word pitch); //Sets Pitch of Module
void mmPlayModule(mm_word address, mm_word mode, mm_word layer); //Plays Module
mm_sfxhand mmEffect(mm_word sample_ID); //Creates Sound Effect
mm_sfxhand mmEffectEx(mm_sound_effect* sound); //Creates Sound Effect
void mmEffectVolume(mm_sfxhand handle, mm_word volume); //Sets Sound Effect Volume
void mmEffectPanning(mm_sfxhand handle, mm_byte panning); //???
void mmEffectRate(mm_sfxhand handle, mm_word rate); //Sets Sound Effect Rate
void mmEffectScaleRate(mm_sfxhand handle, mm_word factor); //??
void mmEffectCancel(mm_sfxhand handle); //Stops sound effect
void mmEffectRelease(mm_sfxhand handle); //Releases Sound Effect?
void mmSetEffectsVolume(mm_word volume); //Set Sound effect volume
void mmEffectCancelAll(void); //Cancel all sound effects
s32 hrt_VolumeCylinder(double r, double h); //Calculates the volume of any given cylinder
s32 hrt_AreaTriangle(double a, double b); //Calculates the area of a right triangle
s32 hrt_AreaCircle(double r); //Calculates the Area of any given circle
void hrt_ConfigWININ(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 bld_2); //configs REG_WININ
void hrt_ConfigWINOUT(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_obj, u8 bg1_obj, u8 bg2_obj, u8 bg3_obj, u8 obj_obj, u8 bld_obj); //Configs REG_WINOUT
u32 hrt_RNGRange(u32 low, u32 high); // Creates a Random number between a range.
int __dputchar(int c);
void	mbv2_dprintf(char *str, ...); 
void	mbv2_dfprintf(int fp, char *str, ...);
int		mbv2_dputchar(int c); 
int		mbv2_dgetch(void);
int		mbv2_dkbhit(void);
int		mbv2_dfopen(const char *file, const char *type);
int		mbv2_dfclose(int fp);
int		mbv2_dfgetc(int fp);
int		mbv2_dfputc(int ch, int fp);
void	mbv2_drewind(int fp);
void hrt_ConfigSIONormal(u8 sc, u8 isc, u8 si_state, u8 soinact, u8 start, u8 length, u8 mode, u8 irq); //Configures REG_SIOCNT
void hrt_ConfigSIOMultiplayer(u8 baudrate, u8 busy, u8 irq); //Configures SIOCNT in multiplayer mode
void hrt_ConfigLowSCCNT(u8 baudrate, u8 cts, u8 paritycnt, u8 length, u8 fifo, u8 parityenable, u8 send, u8 receive, u8 irq); //Configures REG_SIOCNT in UART mode
void hrt_ConfigJOYCNT(u8 reset, u8 receive, u8 send, u8 irq); //Configures JoyCNT
void hrt_EnableSoftReset(void); //Enables Soft-Reset
u16 hrt_GenerateColorFromRGB(u32 red, u32 green, u32 blue); //Creates a 15-bit BGR color value from 24-bit RGB values
u16 hrt_GetRedValueFromBGR(u16 bgr); //Returns the 24-bit RGB Red Color value from a 15-bit BGR color value
u16 hrt_GetGreenValueFromBGR(u16 bgr); //Returns the 24-bit RGB Green Color value from a 15-bit BGR color value
u16 hrt_GetBlueValueFromBGR(u16 bgr); //Returns the 24-bit RGB Blue Color value from a 15-bit BGR color value
int hrt_GetRTCTime(void); //Returns Time of Real-Time-Clock
void hrt_EnableRTC(void); //Enables the Built-in Real Time Clock function
int hrt_GetRTCHour_H(void); //Gets the Hour of the RTC (WIP)
int hrt_GetRTCHour_L(void); //Gets the Hour of the RTC (WIP)
int hrt_GetRTCMinute_H(void); //Gets the Minute of the RTC (WIP)
int hrt_GetRTCMinute_L(void); //Gets the Minute of the RTC (WIP)
int hrt_GetRTCSecond_H(void); //Gets the Second of the RTC (WIP)
int hrt_GetRTCSecond_L(void); //Gets the Second of the RTC (WIP)
void hrt_EditBG(u8 bg, int x, int y, int x_size, int y_size, int angle, int centerx, int centery); //Edits BG
u16 hrt_GetPixelInMode4(int x, int y); //Gives Mode 4 Pixel
u16 hrt_GetPixelInMode3(int x, int y); //Gives Mode 3 Pixel
u8 hrt_GetOBJX(u8 sprite); //Returns OBJ X position
u8 hrt_GetOBJY(u8 sprite); //Returns OBJ Y position
void hrt_DisableCopyOAMOnVBL(void); //Disables Copying OAM on VblankIntWait();
void hrt_EnableCopyOAMOnVBL(void); //Enables Copying OAM on VblankIntWait();
void hrt_DisablemmFrameonVBL(void); //Disables mmFrame() on VblankIntrWait();
void hrt_EnablemmFrameonVBL(void); //Enables mmFrame() on VblankIntrWait();
void hrt_DisableRTC(void); //Disables RTC
void hrt_DisableSoftReset(void); //Disables Soft-reset on VblankIntrWait();
u16 hrt_PointOBJTowardsPosition(u8 sprite, int x, int y); //Rotates a sprite toward a set direction
void hrt_MoveSpriteInDirection(u8 sprite, u16 direction, int steps); //Moves sprite in a set direction
void hrt_SetOBJX(u8 spr, s16 x); //Sets just the X position of a sprite
void hrt_SetOBJY(u8 spr, s16 Y); //Sets just the Y position of a sprite
void hrt_DSPSetBGMode(u8 mode); //Sets the REG_DISPCNT BG Mode.
void hrt_DSPEnableForceBlank(void); //Enables Force Blank
void hrt_DSPDisableForceBlank(void); //Disables Force Blank
void hrt_DSPEnableBG(u8 layer);  //Enables a selected BG Mode
void hrt_DSPDisableBG(u8 layer);  //Enables a selected BG Mode
void hrt_DSPEnableOBJ(void); //Enables OBJ
void hrt_DSPDisableOBJ(void); //Disables OBJ
void hrt_DSPEnableWIN0(void); //Enables Win0
void hrt_DSPDisableWIN0(void); //Disables Win0
void hrt_DSPEnableWIN1(void); //Enables Win1
void hrt_DSPDisableWIN1(void); //Disables Win1
void hrt_DSPEnableWINOBJ(void); //Enables WinOBJ
void hrt_DSPDisableWINOBJ(void); //Disables WinOBJ
void hrt_DSPEnableLinearOBJ(void); //Enables Linear OBJ Tile Mapping
void hrt_DSPDisableLinearOBJ(void); //Disables Linear OBJ TIle Mapping
u8 hrt_DSPGetBGMode(void); //Returns DSP Mode
void hrt_BGSet16Color(u8 layer); //Sets BG to 16 Colors
void hrt_BGSet256Color(u8 layer); //Sets BG to 256 colors
void hrt_BGEnableMosaic(u8 layer); //Enables Mosaic for BG0
void hrt_BGDisableMosaic(u8 layer); //Disables Mosaic for BG0
void hrt_BGSetSize(u8 layer, u8 size); //Sets BG Size
void hrt_BGSetMapBase(u8 layer, u8 no); //Sets BG Map Base
void hrt_BGSetTileBase(u8 layer, u8 no); //Sets BG Tile base
void hrt_BGSetPriority(u8 layer, u8 no); //Sets BG Priority
void hrt_EnableOBJHFlip(u8 objno); //Enables HFlip for a specified sprite
void hrt_DisableOBJHFlip(u8 objno); //Disable HFlip for a specified sprite
void hrt_EnableOBJVFlip(u8 objno); //Enables VFlip for a specified sprite
void hrt_DisableOBJVFlip(u8 objno); //Disable VFlip for a specified sprite
void hrt_SetOBJMode(u8 objno, u8 mode); //Sets mode of a specific sprite
void hrt_EnableOBJMosaic(u8 objno); //Enables Mosaic for a specific sprite
void hrt_DisableOBJMosaic(u8 objno); //Disables Mosaic for a specific sprite
void hrt_SetOBJColor16(u8 objno); //Sets OBJ Color to 16 colors
void hrt_SetOBJColor256(u8 objno); //Sets OBJ Color to 256 colors
void hrt_SetOBJShape(u8 objno, u8 shape); //Sets shape of a sprite
void hrt_SetOBJSize(u8 objno, u8 size); //Sets the size of a sprite
void hrt_SetOBJOffset(u8 objno, u8 data); //Sets the sprite tile number
void hrt_SetOBJPriority(u8 objno, u8 prior); //Sets OBJ Priority
void hrt_SetOBJPalette(u8 objno, u8 palette); //Sets OBJ Palette no.
void hrt_CpuSet(const void *source, void *dest, u32 mode); //Performs CpuSet systemcall
void hrt_CpuFastSet(const void *source, void *dest, u32 mode); //Performs CpuFastSet systemcall
void hrt_RegisterRamReset(int ResetFlags); //SWI 0x01
void hrt_Crash(void); //Crashes the ROM
u16 hrt_Sqrt(u32 X); //BIOS call for Square Root
s32	hrt_Div(s32 Number, s32 Divisor); //SWI 0x06
s32	hrt_DivMod(s32 Number, s32 Divisor); //SWI 0x06
u32	hrt_DivAbs(s32 Number, s32 Divisor); //SWI 0x06
s32	hrt_DivArm(s32 Divisor, s32 Number);  //SWI 0x07
s32	hrt_DivArmMod(s32 Divisor, s32 Number); //SWI 0x07
u32	hrt_DivArmAbs(s32 Divisor, s32 Number); //SWI 0x07
s16 hrt_ArcTan(s16 Tan); //SWI 0x09
u16 hrt_ArcTan2(s16 X, s16 Y); //SWI 0x0A
void hrt_IntrWait(u32 ReturnFlag, u32 IntFlag); //SWI 0x04
void hrt_Halt(void); //SWI 2
void hrt_Stop(void); //SWI 3
void hrt_FXEnableBGTarget1(u8 layer); //Enables the specified BG for Target 1
void hrt_FXDisableBGTarget1(u8 layer); //Disables the specified BG for Target 1
void hrt_FXEnableOBJTarget1(void); //Enables the Blend Control flag for Sprites in target 1
void hrt_FXDisableOBJTarget1(void); //Disables.
void hrt_FXEnableBackdropTarget1(void); //Enables Backdrop for target 1
void hrt_FXDisableBackdropTarget1(void); //Disables.
void hrt_FXSetBlendMode(u8 mode); //Sets blend mode
void hrt_FXEnableBGTarget2(u8 layer); //Enables the specified BG for Target 2
void hrt_FXDisableBGTarget2(u8 layer); //Disables the specified BG for Target 2
void hrt_FXEnableOBJTarget2(void); //Enables the Blend Control flag for Sprites in Target 2
void hrt_FXDisableOBJTarget2(void); //Disables.
void hrt_FXEnableBackdropTarget2(void); //Enables Backdrop for Target 2
void hrt_FXDisableBackdropTarget2(void); //Disables.
u32 hrt_aPlibUnpack(u8 *source, u8 *destination); //aPlib Unpack.
void hrt_ConfigMapLayerDrawing(u8 numLayers, u16 *tileset, s16 dimensionsx, s16 dimensionsy, u16 *map, s32 x, s32 y); //Configures map for large scrolling
void hrt_DrawMapLayerStripH(int layerIdx, int srcY); //Draws a Horizontal Map Strip, for vertical scrolling
void hrt_DrawMapLayerStripV(int layerIdx, int srcX); //Draws a Vertical Map Strip, for horizontal scrolling
void hrt_DSPWinIn0EnableBG(u8 layer); //Enables Specified BG for winin 0
void hrt_DSPWinIn0DisableBG(u8 layer); //Disables Specified BG for winin 0
void hrt_DSPWinIn0EnableOBJ(void); //Enables Sprites for winin 0
void hrt_DSPWinIn0DisableOBJ(void); //Disables Sprites for winin 0
void hrt_DSPWinIn0EnableBlend(void); //Enables Blend for winin 0
void hrt_DSPWinIn0DisableBlend(void); //Disables Blend for winin 0
void hrt_DSPWinIn1EnableBG(u8 layer); //Enables Specified BG for WinIn 1
void hrt_DSPWinIn1DisableBG(u8 layer); //Disables Specified BG for WinIn 1
void hrt_DSPWinIn1EnableOBJ(void); //Enables Sprites for WinIn 1
void hrt_DSPWinIn1DisableOBJ(void); //Disables Sprites for WinIn 1
void hrt_DSPWinIn1EnableBlend(void); //Enables Blend for WinIn 1
void hrt_DSPWinIn1DisableBlend(void); //Disables Blend for WinIn 1
void hrt_DSPWinOutEnableBG(u8 layer); //Enables specified BG for WinOut 0
void hrt_DSPWinOutDisableBG(u8 layer); //Disables specified BG for WinOut 0
void hrt_DSPWinOutEnableOBJ(void); //Enables Sprites for WinOut 0
void hrt_DSPWinOutDisableOBJ(void); //Disables Sprites for WinOut 0
void hrt_DSPWinOutEnableBlend(void); //Enables Blend for WinOut 0
void hrt_DSPWinOutDisableBlend(void); //Disables Blend for WinOut 0
void hrt_DSPWinOutOBJEnableBG(u8 layer); //Enables specified BG for WinOut OBJ
void hrt_DSPWinOutOBJDisableBG(u8 layer); //Disables specified BG for WinOut OBJ
void hrt_DSPWinOut1EnableOBJ(void); //Enables Sprites for WinOut 1
void hrt_DSPWinOut1DisableOBJ(void); //Disables Sprites for WinOut 1
void hrt_DSPWinOut1EnableBlend(void); //Enables Blend for WinOut 1
void hrt_DSPWinOut1DisableBlend(void); //Disables Blend for WinOut 1
int hrt_DecodeJPEG(const unsigned char *data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight); //Decodes a JPEG Image. (FINALLY)
void hrt_SetLargeScrollMapX(s32 x); //X Scrolls a large map
void hrt_SetLargeScrollMapY(s32 y); //Y Scrolls a large map
void hrt_SetBitmapTextColors(u16 outside, u16 inside); //Sets colors of the bitmap text engine
void hrt_SetBGXY(u8 bg, s16 x, s16 y); //Sets X and Y coordinates of a BG
void hrt_SetBGX(u8 bg, s16 x); //Sets X coordinate of a BG
void hrt_SetBGY(u8 bg, s16 y); //Sets Y coordinate of a BG
void hrt_DestroyOBJ(u8 objno); //Erases a sprite
u8 hrt_ConfigRegisterRamReset(u8 clearwram, u8 cleariwram, u8 clearpal, u8 clearvram, u8 clearoam, u8 resetsio, u8 resetsnd, u8 resetall); //Returns a byte for the mode of RegisterRamReset
void hrt_BitUnPack(void* source, void* destination, BUP* data); //Bitunpack
void hrt_ObjAffineSet(ObjAffineSource *source, void *dest, s32 num, s32 offset); //Creates a set of sprite affine data
void hrt_BgAffineSet(BGAffineSource *source, BGAffineDest *dest, s32 num); //Creates a set of sprite affine data
void hrt_SoundDriverInit(SoundArea *sa); //Initializes the BIOS sound driver
void hrt_SoundDriverMode(u32 mode); //SWI
u32  hrt_MidiKey2Freq(WaveData *wa, u8 mk, u8 fp); //Calculates the value of the assignment to ((SoundArea)sa).vchn[x].fr when playing the wave data, wa, with the interval (MIDI KEY) mk and the fine adjustment value (halftones=256) fp. 
void hrt_SoundDriverMain(void); //Main of the BIOS sound driver
void hrt_SoundDriverVsync(void); //Resets the sound DMA, call this after every 1/60 of a second
void hrt_SoundChannelClear(void); //Stops sound and clears the FIFO registers
void hrt_SoundDriverVsyncOff(void); //Used to stop sound DMA.
void hrt_SoundDriverVsyncOn(void); //Restarts the sound DMA.
void hrt_SoundWhatever0(void); //Undocumented - Unknown
void hrt_SoundWhatever1(void); //Undocumented - Unknown
void hrt_SoundWhatever2(void); //Undocumented - Unknown
void hrt_SoundWhatever3(void); //Undocumented - Unknown
void hrt_SoundWhatever4(void); //Undocumented - Unknown
void hrt_SoundGetJumpList(void* dest); //Undocumented - receives pointers to 36 additional sound-related  BIOS functions
void hrt_NDS_WaitByLoop(s32 delay); //NDS/DSi Only - Performs a wait
u16 hrt_NDS_GetCRC16(u16 initial, u32 start, u32 length); //NDS/DSi Only - calculates CRC16 of a specified memory portion.
u8 hrt_NDS_IsDebugger(void); //NDS Only - Detects whether or not this ROM is running on a Debug DS Model.
void hrt_InitTiledText(u8 bg); //initializes the tiled text.
void hrt_PrintOnTilemap(u8 tx, u8 ty, char* str, ...); //Writes with tiled text
void hrt_CustomHalt(u8 reserved1, u8 reserved2, u8 param); //performs the customhalt SWI
u16 hrt_NDS_GetSineTable(u8 index); //NDS/DSi Only
u16 hrt_NDS_GetPitchTable(u16 index); //NDS/DSi Only
u16 hrt_NDS_GetVolumeTable(u16 index); //NDS/DSi Only
void hrt_NDS_CustomPost(u32 value); //NDS/DSi Only
void hrt_NDS_GetBootProcs(void); //NDS/DSi Only
void hrt_JumpExecutionToAddress(u32* address); //Jumps execution to an address in memory
u8 hrt_GetOBJPalette(u8 objno); //Returns palette of a Sprite
u8 hrt_GetOBJPriority(u8 objno); //Returns Priority of a sprite
u16 hrt_GetOBJOffset(u8 objno); //Returns offset of a sprite
int hrt_ExtractMultipleBits(int number, int k, int p); //Returns the value of multiple bits
void hrt_EnableOBJAffine(u8 objno); //Enables Affine for a sprite
void hrt_DisableOBJAffine(u8 objno); //Disables Affine for a sprite
s16 hrt_GetBGX(u8 bg); //Returns the X Position of a background 
s16 hrt_GetBGY(u8 bg); //Returns the Y position of a background
void hrt_DrawFullLargeScrollMap();
u8 hrt_GetBGPriority(u8 bg); //Returns the priority value of a background
u8 hrt_GetBGTileBase(u8 bg); //Returns the tile base of a background
u8 hrt_GetBGMapBase(u8 bg); //Returns the map base of a background
u8 hrt_GetBGScreenSize(u8 bg); //Returns the screen size bit
u8 hrt_IsBGWraparound(u8 bg); //Detects whether or not BG2 or BG3 are set to wrap around
u8 hrt_IsBGMosaic(u8 bg); //Detects whether or not a BG is mosaic
u8 hrt_IsOBJAffine(u8 objno); //Detects whether or not a sprite is set to affine mode
u8 hrt_IsOBJDoubleSize(u8 objno); //Detects whether or not a sprite is set to be double size
u8 hrt_IsOBJMosaic(u8 objno); //Detects whether or not a sprite is set to mosaic
u8 hrt_GetOBJColorMode(u8 objno); //Returns the color mode of a sprite (0=16 colors, 1=256 colors)
u8 hrt_DSPIsBGEnabled(u8 bgno); //Detects whether or not a specified BG is enabled
u8 hrt_IsOBJHFlip(u8 objno); //Detects whether or not a sprite is horizontally flipped
u8 hrt_IsOBJVFlip(u8 objno); //Detects whehter or not a sprite is vertically flipped
u8 hrt_GetOBJSize(u8 objno); //Returns the size of a sprite
u8 hrt_GetOBJMode(u8 objno); //Returns the mode of a sprite

#ifdef __cplusplus
}
#endif

#endif

#endif