#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_MISC
#define HRT_MISC

#include <stddef.h>
#include <stdbool.h>
#include "hrt_types.h"
#include "hrt_memmap.h"
#include "hrt_interrupt.h"

//Structs
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

//Macros
#define DMA_DST_INC		(0<<21)
#define DMA_DST_DEC		(1<<21)
#define DMA_DST_FIXED	(2<<21)
#define DMA_DST_RELOAD	(3<<21)

#define DMA_SRC_INC		(0<<23)
#define DMA_SRC_DEC		(1<<23)
#define DMA_SRC_FIXED	(2<<23)

#define DMA_REPEAT		(1<<25)

#define DMA16			(0<<26)
#define DMA32			(1<<26)

#define	GAMEPAK_DRQ		(1<<27)

#define DMA_IMMEDIATE	(0<<28)
#define DMA_VBLANK		(1<<28)
#define DMA_HBLANK		(2<<28)
#define DMA_SPECIAL		(3<<28)

#define DMA_IRQ			(1<<30)
#define DMA_ENABLE		(1<<31)

#define hrt_GetCPUUsage() REG_VCOUNT * 0.88
#define hrt_Init() \
	hrt_InitIRQ(); \
	hrt_EnableIRQ(IRQ_VBLANK); \
	hrt_EnableIRQ(IRQ_KEYPAD)

#define NOT  !
#define AND  &&
#define NOR  !|
#define OR   |
#define NAND !&
#define XOR  ^
#define XNOR !^

//Microsoft IntelliSense, for Visual Studio stuff
#if __INTELLISENSE__
#define __attribute__(q)
#define __builtin_strcmp(a,b) 0
#define __builtin_strlen(a) 0
#define __builtin_memcpy(a,b) 0
#define __builtin_va_list void*
#define __builtin_va_start(a,b)
#define __extension__
#endif

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

//Functions
HEART_API const GBFS_FILE *find_first_gbfs_file(const void *start);
HEART_API const void *skip_gbfs_file(const GBFS_FILE *file); //GBFS Stuff
HEART_API const void *gbfs_get_obj(const GBFS_FILE *file, const char *name, u32 *len); //GBFS Stuff
HEART_API void *gbfs_copy_obj(void *dst, const GBFS_FILE *file, const char *name); //GBFS Stuff
HEART_API size_t gbfs_count_objs(const GBFS_FILE *file); //Counts the amount of files in GBFS
HEART_API const void *gbfs_get_nth_obj(const GBFS_FILE *file, size_t n, char *name, u32 *len); //Gets the value of file from a name
HEART_API unsigned int aP_depack(const void *source, void *destination); //aPlib unpack
HEART_API void UnpackPUC(u8 *srcadr, u8 *dstadr); //PuCrunch
HEART_API u32  hrt_RNGRange(u32 low, u32 high); // Creates a Random number between a range.
HEART_API u32  hrt_ReloadRNG(void); //Reloads RNG.
HEART_API u32  hrt_CreateRNG(void); //Creates RNG Value. You can change the type of return value in your main.c
HEART_API int  hrt_DecodeJPEG(const unsigned char *data, volatile unsigned short *out, int outWidth, int outHeight); //Decodes a JPEG image to VRAM in Mode 3.
HEART_API void hrt_PrintRTCTimeIntoString(char* ptr); //Prints the Time of the RTC into a string
HEART_API void hrt_DMATransfer(u8 channel, void* source, void* dest, u32 WordCount, u32 mode); //DMA Copy
HEART_API void hrt_DMAClear(u8 channel); //Clears a DMA Channel
HEART_API void hrt_EZFSetRompage(u16 page); //Sets the ROM Page of EZ-Flash Omega
HEART_API void hrt_ExitToEZFlash(); //Exits to EZ-Flash Omega
HEART_API void hrt_SleepMode(); //Activates the sleep mode present in some commercial games
HEART_API u32  hrt_GetHeartLibVersion(void); //Retuns the HeartLib version
HEART_API void hrt_DecodePCX(const u8 *PCXBuffer, u16 * ScreenAddr, u16* Palette);

//Inlines

//Misc. MaxMod Stuff
#define mmCreateStaticEffect(name, id, rate, handle, volume, panning)       mm_sound_effect (name) = { \
{ (id)} ,	\
(rate), \
(handle),		\
(volume),	\
(panning), \
}

#define mmCreateDynamicEffect(name) mm_sound_effect (name)

#define mmConfigDynamicEffect(sName, sID, sRate, sHandle, sVolume, sPanning)\
	(sName).id = (sID);\
    (sName).rate = (sRate);\
    (sName).handle = (sHandle);\
	(sName).volume = (sVolume);\
    (sName).panning = (sPanning)

#endif

#ifdef __cplusplus
}
#endif