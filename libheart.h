//File: libheart.h - The NEW Definitive GBA Header File
//Date: March 2018
//Author: Sterophonick
//Derived from gba.h by eloist and agb_lib.h by me, Inspired by Hamlib's mygba.h, who da heck remembers that library amirite?
//This library is designed to make GBA Programming easy to do, and for everyone to be able to do it, not unlike HAMLib (rip 2001-2011 =( may god rest ur soul)
//This Library is Dedicated to Stevendog98, who is wanting to make GBA Games. This is to give him a head start on the GBA.
//This Library is going to be huge. It will probably be one of the best GBA Libraries in recent years.

//Some functions don't work yet so be patient!
/*
	List:
		JPEG
		Tiled Text
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
	FatFs (Kudos to Elm-Chan, EZ-Team, and LibGBA)
	MBV2Lib (Greetz to LibGBA)
	Xboo Stuff (LibGBA)
	Typedefs
	Defines for making those larger functions easier to understand.
	Real-Time Clock Stuff (Shoutouts to Dwedit)
	Mode 7?
	Exit to EZ4 (Shoutouts to Dwedit and GodBolt)

TODO:
		Implement Tiled Text
		Implement Easy System Call functions
		JPEG Decoding
		Game Boy Player Functions?
		PogoShell Functions?

Recommended Tools for development with this library:
	gfx2gba
	usenti
	gbfs
	mmutil
	bin2s
*/

#ifndef LIBHEART_H
#define LIBHEART_H

#ifdef __cplusplus
extern "C" {
#endif

#define HRT_VERSION_MAJOR 1
#define HRT_VERSION_MINOR 00
#define HRT_VERSION_DEV 99

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
#include <iso646.h>
#include <memory.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/fcntl.h>
#include <errno.h>

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

#include "jpg.h"

u16* VRAM;
u16* OAMData;
u16* BGPaletteMem;
u16* OBJPaletteMem;
u16* BGTileMem;
u8* SaveData;
u16* OAM;
u16* FrontBuffer;
u16* BackBuffer;
u8* ExtWRAM;

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

//Logic Gates - So you don't have to remember the syntax for all the logic gates. It's a lifesaver.
#define NOT  !
#define AND  &&
#define NOR  !|
#define OR   |
#define NAND !&
#define XOR  ^
#define XNOR !^
//

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

#define hrt_MULTIBOOT const u8 __gba_multiboot; //Type 'MULTIBOOT' at the beginning of a project, and the file will be compiled as a multiboot ROM.

//Bits
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
#define PI                   3.14159265359
#define RADIAN(n)    (((float) n)/ (float) 180 * PI)

//Taken from HAM's mygba.h
#define ACCESS_8(location)		*(volatile u8 *)  (location)
#define ACCESS_16(location)		*(volatile u16 *) (location)
#define ACCESS_32(location)		*(volatile u32 *) (location)
#define MEM_PAL_COL_PTR(x)		 (u16*) (0x05000000+(x<<1))	// Palette color pointer
#define MEM_PAL_OBJ_PTR(x)		 (u16*) (0x05000200+(x<<1))	// Palette color pointer
#define hrt_MEM_IN_EWRAM __attribute__ ((section (".ewram"))) = {0}
#define hrt_MEM_IN_IWRAM __attribute__ ((section (".iwram"))) = {0}
#define hrt_MEM_FUNC_IN_IWRAM __attribute__ ((section (".iwram"), long_call))
#define hrt_MEM_FUNC_IN_EWRAM __attribute__ ((section (".ewram"), long_call))
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
//xcomms
#define dprintf		xcomms_dprintf
#define dfprintf	xcomms_dfprintf
#define dputchar	xcomms_dputchar
#define dfopen		xcomms_dfopen
#define dfseek		xcomms_fseek
#define dfread		xcomms_fread
#define dfwrite		xcomms_fwrite
#define dftell		xcomms_ftell
#define dfclose		xcomms_dfclose
#define dfgetc		xcomms_dfgetc
#define dfputc		xcomms_dfputc
#define drewind		xcomms_drewind
#define dgetch		xcomms_getch
#define dkbhit		xcomms_kbhit
#define PRINT_CMD	('PRT'<<8)
#define DPUTC_CMD	('DPT'<<8)
#define FOPEN_CMD	('OPN'<<8)
#define FCLOSE_CMD	('CLS'<<8)
#define FREAD_CMD	('FRD'<<8)
#define FWRITE_CMD	('FWR'<<8)
#define FSEEK_CMD	('FSK'<<8)
#define REWIND_CMD	('RWD'<<8)
#define FTELL_CMD	('FTL'<<8)
#define FGETC_CMD	('FGT'<<8)
#define FPUTC_CMD	('FPT'<<8)
#define GETCH_CMD	('GTC'<<8)
#define KBHIT_CMD	('KBH'<<8)
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
#ifdef __cplusplus
extern "C" {
#endif
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
//

//mbv2.h - libgba
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
//eof

const GBFS_FILE *find_first_gbfs_file(const void *start);
const double SIN[360];
const double COS[360];
const double RAD[360];
const unsigned short font_matrixBitmap[6080];
const unsigned short font_milkbottleTiles[3072];
const unsigned short font_milkbottlePal[16];

//Defines for Functions
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
#define OBJ_MODE_NORMAL 0
#define OBJ_MODE_ALPHA 1
#define OBJ_MODE_WIN 2
#define OBJ_MODE_PROHIBITED 3
#define OBJ_DOUBLESIZE_ENABLE 1
#define OBJ_DOUBLESIZE_DISABLE 0
#define OBJ_PAL_16 0
#define OBJ_PAL_256 1

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
//

///////////////////////////FUNCTIONS////////////////////////////
// These functions will allow the user control over objects, sound,///
////registers, memory, bitmaps, palettes, and many other things./////
///////////////////////////////////////////////////////////////
static inline u32 hrt_GetBiosChecksum() {
		register u32 result;
#if   defined   ( __thumb__ )
		__asm ("SWI   0x0d\nmov %0,r0\n" :  "=r"(result) :: "r1", "r2", "r3");
#else
		__asm ("SWI   0x0d<<16\nmov %0,r0\n" : "=r"(result) :: "r1", "r2", "r3");
#endif
		return result;
}//Returns BIOS Checksum. Return value differs if you are playing on a Prototype GBA, Release GBA, or a Nintendo DS.
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
void hrt_ColdReset(); //Restarts the console -- Undocumented BIOS Call
void hrt_SoftReset(); //Restarts from ROM.
void hrt_Init(int mode); //If set to 0, no intro will play. If set to 1, then an intro will play. MUST BE EXECUTED BEFORE USING THIS LIBRARY.
void hrt_DMA_Copy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode); //Copies from DMA
void hrt_SetFXLevel(u8 level); //Sets BLDY level
void hrt_SetFXMode(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 backdrop, u8 mode, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 backdrop_2); //Sets BLDCNT Mode
void hrt_SetDSPMode(u8 mode, u8 CGB, u8 framesel, u8 unlockedhblank, u8 objmap, u8 forceblank, u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 win0, u8 win1, u8 objwin); //Sets REG_DISPCNT, but it is a lot clearer what you have to do.
void hrt_Assert(char* func, int arg, char* desc); //Error message
void hrt_ConfigBG(u8 bg, u8 priority, u8 tilebase, u8 mosaic, u8 color256, u8 tilemapbase, u8 wraparound, u8 dimensions); //Configures BG
void hrt_LineWipe(u16 color, int time, u8 mode); //Wipe from hrt_DrawLine
void hrt_SetMosaic(u8 bh, u8 bv, u8 oh, u8 ov); //Sets Mosaic Level -- Not Tested Yet.
double hrt_Distance(int x1, int y1, int x2, int y2); //Returns distance between 2 different points
double hrt_Slope(int x1, int y1, int x2, int y2); //Returns slope between 2 different points
void hrt_SetTile(u8 x, u8 y, int tileno); //Sets a specific tile to a given value.
void hrt_SetFXAlphaLevel(u8 src, u8 dst); //Sets REG_BLDALPHA
//void hrt_DrawTextTile(int x, int y, char* str); //Unfinished -- Ignore this
//void hrt_InitTextTile(u8 bgno); //Unfinished -- Ignore this.
void hrt_FillPalette(int paltype, u16 color); //Fills BG or OBJ palette witha specified color.
void hrt_AGBPrint(const char *msg); //hrt_AGBPrint is interesting. Using this will make the ROM put a message into the output log if AGBPrint is enabled on VisualBoyAdvance. I found a technique that doesn't crash on hardware or other emulators.
void *hrt_Memcpy(void *dest, const void *src, size_t len); //Copies Memory from one place to another.
void hrt_VblankIntrWait(); //Waits for Vblank Interrupt.
void hrt_RegisterRamReset(); //Resets Memory. Unfinished.
void hrt_Suspend(); //Suspends the console. Unfinished.
void hrt_EZ4Exit(); //Exits to Ez-Flash IV Menu.
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
void mmEffectCancelAll(); //Cancel all sound effects
void hrt_StopSoundFIFO(); //Stops FIFO Sound -- No longer attached to MaxMod.
double hrt_VolumeCylinder(double r, double h); //Calculates the volume of any given cylinder
double hrt_AreaTriangle(double a, double b); //Calculates the area of a right triangle
double hrt_AreaCircle(double r); //Calculates the Area of any given circle
void hrt_ConfigWININ(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_2, u8 bg1_2, u8 bg2_2, u8 bg3_2, u8 obj_2, u8 bld_2); //configs REG_WININ
void hrt_ConfigWINOUT(u8 bg0, u8 bg1, u8 bg2, u8 bg3, u8 obj, u8 bld, u8 bg0_obj, u8 bg1_obj, u8 bg2_obj, u8 bg3_obj, u8 obj_obj, u8 bld_obj); //Configs REG_WINOUT
u32 hrt_RNGRange(u32 low, u32 high); // Creates a Random number between a range.
int __dputchar(int c); //MBV2Lib print
void	mbv2_dprintf(char *str, ...); //Mbv2Lib print
void	mbv2_dfprintf(int fp, char *str, ...);//Mbv2Lib print
int		mbv2_dputchar(int c); //Mbv2Lib print
int		mbv2_dgetch(void); 
int		mbv2_dkbhit(void);
int		mbv2_dfopen(const char *file, const char *type);
int		mbv2_dfclose(int fp);
int		mbv2_dfgetc(int fp);
int		mbv2_dfputc(int ch, int fp);
void	mbv2_drewind(int fp);
void	xcomms_dprintf(char *str, ...);
void	xcomms_dfprintf(int handle, char *str, ...);
void	xcomms_dputchar(int c);
int		xcomms_dfopen(const char *file, const char *type);
void	xcomms_dfclose(int handle);
u8		xcomms_dfgetc(int handle);
void	xcomms_dfputc(int ch, int handle);
void	xcomms_fread(void *buffer, u32 size, u32 count, int handle);
void	xcomms_fwrite(void *buffer, u32 size, u32 count, int handle);
void	xcomms_drewind(int handle);
void 	xcomms_fseek(int handle, u32 offset, int origin);
u32		xcomms_ftell(int handle);
void	xcomms_send(u32 data);
void	xcomms_sendblock(const void *block, u32 len);
int		xcomms_getch(void);
int		xcomms_kbhit(void);
void	xcomms_init();
void hrt_ConfigSIONormal(u8 sc, u8 isc, u8 si_state, u8 soinact, u8 start, u8 length, u8 mode, u8 irq); //Configures REG_SIOCNT
void hrt_ConfigSIOMultiplayer(u8 baudrate, u8 busy, u8 irq); //Configures SIOCNT in multiplayer mode
void hrt_ConfigLowSCCNT(u8 baudrate, u8 cts, u8 paritycnt, u8 length, u8 fifo, u8 parityenable, u8 send, u8 receive, u8 irq); //Configures REG_SIOCNT in UART mode
void hrt_ConfigJOYCNT(u8 reset, u8 receive, u8 send, u8 irq); //Configures JoyCNT
void hrt_EnableSoftReset(); //Enables Soft-Reset
u16 hrt_GenerateColorFromRGB(u32 red, u32 green, u32 blue); //Creates a 15-bit BGR color value from 24-bit RGB values
u16 hrt_GetRedValueFromBGR(u16 bgr); //Returns the 24-bit RGB Red Color value from a 15-bit BGR color value
u16 hrt_GetGreenValueFromBGR(u16 bgr); //Returns the 24-bit RGB Green Color value from a 15-bit BGR color value
u16 hrt_GetBlueValueFromBGR(u16 bgr); //Returns the 24-bit RGB Blue Color value from a 15-bit BGR color value
int hrt_GetRTCTime(void); //Returns Time of Real-Time-Clock
void hrt_EnableRTC(); //Enables the Built-in Real Time Clock function
int hrt_GetRTCHour_H(); //Gets the Hour of the RTC (WIP)
int hrt_GetRTCHour_L(); //Gets the Hour of the RTC (WIP)
int hrt_GetRTCMinute_H(); //Gets the Minute of the RTC (WIP)
int hrt_GetRTCMinute_L(); //Gets the Minute of the RTC (WIP)
int hrt_GetRTCSecond_H(); //Gets the Second of the RTC (WIP)
int hrt_GetRTCSecond_L(); //Gets the Second of the RTC (WIP)
void hrt_EditBG(u8 bg, int x, int y, int x_size, int y_size, int angle, int centerx, int centery); //Edits BG
u16 hrt_GetPixelInMode4(int x, int y); //Gives Mode 4 Pixel
u16 hrt_GetPixelInMode3(int x, int y); //Gives Mode 3 Pixel

#ifdef __cplusplus
}
#endif

#endif