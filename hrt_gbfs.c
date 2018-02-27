
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;
/*
Copyright 2002 Damian Yerrick
Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
*/


/* This code assumes a LITTLE ENDIAN target.  It'll need a boatload
   of itohs and itohl calls if converted to run on Sega Genesis.  It
   also assumes that the target uses 16-bit short and 32-bit longs.
*/

typedef unsigned short u16;
typedef unsigned long u32;

#include <stdlib.h>
#include <string.h>
#include "libheart.h"
extern u8 hrt_start;

#define GBFS_SEARCH_LIMIT ((const u32 *)0x0a000000)
#define GBFS_ALIGNMENT  256

const GBFS_FILE *find_first_gbfs_file(const void *start)
{
  const u32 *here = (const u32 *)
                      ((unsigned long)start & (-GBFS_ALIGNMENT));
  const char rest_of_magic[] = "ightGBFS\r\n\032\n";
  while(here < GBFS_SEARCH_LIMIT)
  {
    if(*here == 0x456e6950)
    {
      if(!memcmp(here + 1, rest_of_magic, 12))
        return (const GBFS_FILE *)here;
    }
    here += GBFS_ALIGNMENT / sizeof(*here);
  }
  return 0;
}
const void *skip_gbfs_file(const GBFS_FILE *file)
{
  return ((char *)file + file->total_len);
}
static int namecmp(const void *a, const void *b)
{
  return memcmp(a, b, 24);
}
const void *gbfs_get_obj(const GBFS_FILE *file,
                         const char *name,
                         u32 *len)
{
  char key[24] = {0};
  GBFS_ENTRY *dirbase = (GBFS_ENTRY *)((char *)file + file->dir_off);
  size_t n_entries = file->dir_nmemb;
  GBFS_ENTRY *here;
  strncpy(key, name, 24);
  here = bsearch(key, dirbase,
                 n_entries, sizeof(GBFS_ENTRY),
                 namecmp);
  if(!here)
    return NULL;
  if(len)
    *len = here->len;
  return (char *)file + here->data_offset;
}
void *gbfs_copy_obj(void *dst,
                    const GBFS_FILE *file,
                    const char *name)
{
  u32 len;
  const void *src = gbfs_get_obj(file, name, &len);
  if(!src)
    return NULL;
  memcpy(dst, src, len);
  return dst;
}
