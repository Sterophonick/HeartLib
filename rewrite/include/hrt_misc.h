#ifndef HRT_MISC
#define HRT_MISC

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

//Inlines

#endif