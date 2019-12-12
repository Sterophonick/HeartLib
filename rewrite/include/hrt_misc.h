#ifndef HRT_MISC
#define HRT_MISC

#include <stddef.h>
#include "hrt_types.h"
#include "hrt_memmap.h"

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

//Functions
HEART_API const GBFS_FILE *find_first_gbfs_file(const void *start);
HEART_API const void *skip_gbfs_file(const GBFS_FILE *file); //GBFS Stuff
HEART_API const void *gbfs_get_obj(const GBFS_FILE *file, const char *name, u32 *len); //GBFS Stuff
HEART_API void *gbfs_copy_obj(void *dst, const GBFS_FILE *file, const char *name); //GBFS Stuff
HEART_API size_t gbfs_count_objs(const GBFS_FILE *file); //Counts the amount of files in GBFS
HEART_API const void *gbfs_get_nth_obj(const GBFS_FILE *file, size_t n, char *name, u32 *len); //Gets the value of file from a name
HEART_API unsigned int aP_depack(const void *source, void *destination); //aPlib unpack
HEART_API void UnpackPUC(u8 *srcadr, u8 *dstadr); //PuCrunch
HEART_API u32 hrt_RNGRange(u32 low, u32 high); // Creates a Random number between a range.
HEART_API u32 hrt_ReloadRNG(void); //Reloads RNG.
HEART_API u32 hrt_CreateRNG(void); //Creates RNG Value. You can change the type of return value in your main.c
HEART_API int hrt_DecodeJPEG(const unsigned char *data, volatile unsigned short *out, int outWidth, int outHeight); //Decodes a JPEG image to VRAM in Mode 3.
HEART_API void hrt_PrintRTCTimeIntoString(char* ptr); //Prints the Time of the RTC into a string
HEART_API void hrt_DMACopy(u8 channel, void* source, void* dest, u32 WordCount, u32 mode); //DMA Copy
HEART_API void hrt_DMAClear(u8 channel); //Clears a DMA Channel
HEART_API void hrt_EZFSetRompage(u16 page); //Sets the ROM Page of EZ-Flash Omega
HEART_API void hrt_ExitToEZFlash(); //Exits to EZ-Flash Omega
HEART_API void hrt_SleepMode(); //Activates the sleep mode present in some commercial games

//Inlines

#endif