//File: libheart.h - The NEW Definitive GBA Header File
//Date: March 2018
//Author: Sterophonick
//Derived from gba.h by eloist
//This library is designed to make GBA Programming easy to do, and for everyone to be able to do it, not unlike HAMLib (rip 2001-2011 =( may god rest ur soul)
//This Library is Dedicated to Stevendog98, who is wanting to make GBA Games. This is to give him a head start on the GBA.

/*
  What's Included:
    **ALL** the GBA Register Definitions -- Including some undocumented ones
	Screen Wipes (Mode 3 at the moment)
	Sprites
	Affine Transformation - BG and OBJ
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
	PCX Decoding (Shoutouts to libGBA)
	Random Number Generation (Uses Merssene Twister method)
	MaxMod (Kudos to LibGBA)

TODO:
		Implement Tiled Text
		Implement Easy System Call functions
		JPEG Decoding
		MBV2Lib from LibGBA?
		Game Boy Player Functions?
		PogoShell Functions?

Recommended Tools for development with this library:
gfx2gba
usenti
gbfs
mid2s3m
*/

#ifndef LIBHEART_H
#define LIBHEART_H

#ifdef __cplusplus
extern "C" {
#endif

#define HEART_VERSION_MAJOR 1
#define HEART_VERSION_MINOR 00

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
#include "maxmod.h" //Built-In MaxMod

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
typedef const signed char cu8;
typedef const signed short cu16;
typedef const signed long cu32;
typedef const signed long long cu64;
typedef const signed int csint;
typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef signed int sint;
typedef void(*IntFn)(void);

u32* OAMmem;
u16* VRAM;
u16* OAMData;
u16* BGPaletteMem;
u16* OBJPaletteMem;
u16* BGTileMem;
u8* SaveData;
u16* OAM;
u16* FrontBuffer;
u16* BackBuffer;
u8 hrt_start;
int	hrt_offsetOAMData;
int hrt_offsetOAMPal;
int hrt_offsetBGMap;
int hrt_offsetBGTile;
int hrt_offsetBGPal;

typedef struct {
    char		manufacturer;
    char		version;
    char		encoding;
    char		bpp;
    short int	x1, y1;
    short int	x2, y2;
    short int	hres;
    short int	vres;
    char		palette[48];
    char		reserved;
    char		color_planes;
    short int	BytesPerLine;
    short int	PaletteType;
    char		dummy[58];
} __attribute__((packed)) pcx_header;
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

//Bits
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
#define	IWRAM		0x03000000
#define	EWRAM		0x02000000
#define	EWRAM_END	0x02040000
#define	SRAM		0x0E000000
#define	REG_BASE	0x04000000
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
#define RGB15(r,g,b) ((((b)>>3)<<10)+(((g)>>3)<<5)+((r)>>3))

#define hrt_MEM_IN_EWRAM __attribute__ ((section (".ewram"))) = {0}
#define hrt_MEM_IN_IWRAM __attribute__ ((section (".iwram"))) = {0}
#define hrt_MEM_FUNC_IN_IWRAM __attribute__ ((section (".iwram"), long_call))
//

#define MAX_INTS	15
#define INT_VECTOR	*(IntFn *)(0x03007ffc)		// BIOS Interrupt vector
#ifndef TRUE
#define TRUE 1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef NULL
#define NULL ((void *)0)
#endif

const GBFS_FILE *find_first_gbfs_file(const void *start);

const double SIN[360];
const double COS[360];
const double RAD[360];
const unsigned short font_matrixBitmap[6080];
const unsigned short font_milkbottleTiles[3072];
const unsigned short font_milkbottlePal[16];

u32 hrt_MultiBoot(MultiBootParam *mp, u32 mode); //Enables Multiboot? Unknown
void hrt_InitInterrupt(void) __attribute__((deprecated)); //Initialize interrupts mirror
void hrt_irqInit(); //Initialize Interrupts
IntFn *hrt_SetInterrupt(irqMASK mask, IntFn function) __attribute__((deprecated)); //Set Interrupt Function Mirror
IntFn *hrt_irqSet(irqMASK mask, IntFn function); //Set Interrupt Function
void hrt_EnableInterrupt(irqMASK mask) __attribute__((deprecated)); //Enable Interrupt Mirror
void hrt_irqEnable(int mask); //Enable Interrupt
void hrt_DisableInterrupt(irqMASK mask) __attribute__((deprecated)); //Disable Interrupt Mirror
void hrt_irqDisable(int mask); //Disable Interrupt
void hrt_IntrMain(); //Main Interrupt
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
void hrt_AffineOBJ(int rotDataIndex, s32 angle, s32 x_scale,s32 y_scale); //Scales and Rotates an object with the affine flag set to 1.
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
void hrt_ColdReset(); //Restarts the console -- Undocumented BIOS Call
void hrt_SoftReset(); //Restarts from ROM.
extern u32 hrt_GetBiosChecksum(); //Returns BIOS Checksum.
void hrt_Init(int mode); //If set to 0, no intro will play. If set to 1, then an intro will play. MUST BE EXECUTED BEFORE USING THIS LIBRARY.
void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode); //Copies from DMA
void hrt_SetFXLevel(u8 level); //Sets BLDY level
void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2); //Sets BLDCNT Mode
void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin); //Sets REG_DISPCNT, but it is a lot clearer what you have to do.
void hrt_Assert(u8 error, char* func, int arg, char* desc); //Error message
void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions); //Configures BG
void hrt_LineWipe(u16 color, int time, u8 mode); //Wipe from hrt_DrawLine
void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov); //Sets Mosaic Level -- Not Tested Yet.
double hrt_Distance(int x1, int y1, int x2, int y2); //Returns distance between 2 different points
double hrt_Slope(int x1, int y1, int x2, int y2); //Returns slope between 2 different points
void hrt_SetTile(u8 x, u8 y, int tileno); //Sets a specific tile to a given value.
void hrt_SetFXAlphaLevel(u8 src, u8 dst); //Sets REG_BLDALPHA
void hrt_DrawTextTile(int x, int y, char* str); //Unfinished -- Ignore this
void hrt_InitTextTile(); //Unfinished -- Ignore this.
void hrt_FillPalette(int paltype, u16 color); //Fills BG or OBJ palette witha specified color.
void hrt_AGBPrint(const char *msg); //hrt_AGBPrint is interesting. Using this will make the ROM put a message into the output log if AGBPrint is enabled on VisualBoyAdvance. I found a technique that doesn't crash on hardware or other emulators.
void *hrt_Memcpy(void *dest, const void *src, size_t len); //Copies Memory from one place to another.
void hrt_VblankIntrWait(); //Waits for Vblank Interrupt.
void hrt_RegisterRamReset(); //Resets Memory. Unfinished.
void hrt_Suspend(); //Suspends the console. Unfinished.
void hrt_EZ4Exit() hrt_MEM_FUNC_IN_IWRAM; //Exits to Ez-Flash IV Menu. Unfinished
void hrt_ConfigTimer(u8 channel, u8 scale, u8 irq, u8 enable, u16 start); //Configures a Timer.
void hrt_SaveByte(int offset, u8 value); //Copies a byte to SRAM at a given location
u8 hrt_LoadByte(int offset); //Loads a byte from SRAM at a given address
void hrt_FlipBGBuffer(); //Flips FrontBuffer and BackBuffer in mode 4.
const void *skip_gbfs_file(const GBFS_FILE *file); //GBFS Stuff
const void *gbfs_get_obj(const GBFS_FILE *file, const char *name, u32 *len); //GBFS Stuff
void *gbfs_copy_obj(void *dst, const GBFS_FILE *file, const char *name); //GBFS Stuff
void hrt_ConfigSOUNDCNT(u8 psgmasvol, u8 loudA, u8 loudB, u8 enablear, u8 enableal, u8 atimer, u8 areset, u8 enablebr, u8 enablebl, u8 btimer, u8 breset); //Configures SOUNDCNT
int hrt_ConfigDMA(u8 dstoff, u8 srcoff, u8 repeat, u8 b32, u8 starttiming, u8 irq, u8 enable); //Returns a hex value for the specific operands.
void hrt_DecodePCX(const u8 *PCXBuffer, u16 *ScreenAddr, u16 *Palette); //Decodes PCX File and Copies data to specified locations. Usually VRAM and BGPaletteMem
void hrt_SeedRNG(u32 seed); //Seeds the RNG. Think of it like in Minecraft, where you can type in a "seed" for the world generator before creating a world, and based on that seed, the world will generate accordingly to the games RNG.
u32 hrt_ReloadRNG(void); //Reloads RNG.
u32 hrt_CreateRNG(void); //Creates RNG Value. You can change the type of return value. in your main.c
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
void mmEffectCancelAll(); //Cancel all sound effects
void hrt_StopSoundFIFO(); //Stops FIFO Sound -- No longer attached to MaxMod.

#ifdef __cplusplus
}
#endif
#endif