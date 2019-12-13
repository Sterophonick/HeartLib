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
//View the GBFS-LICENSE file for details

/* This code assumes a LITTLE ENDIAN target.  It'll need a boatload
   of itohs and itohl calls if converted to run on Sega Genesis.  It
   also assumes that the target uses 16-bit short and 32-bit longs.
*/

#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include "hrt_misc.h"
#define GBFS_SEARCH_LIMIT ((const u32 *)0x0a000000)
#define GBFS_ALIGNMENT  256

const GBFS_FILE *find_first_gbfs_file(const void *start)
{
	const u32 *here = (const u32 *)
		((unsigned long)start & (-GBFS_ALIGNMENT));
	const char rest_of_magic[] = "ightGBFS\r\n\032\n";
	while (here < GBFS_SEARCH_LIMIT)
	{
		if (*here == 0x456e6950)
		{
			if (!memcmp(here + 1, rest_of_magic, 12))
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
const void *gbfs_get_obj(const GBFS_FILE *file,	const char *name,	u32 *len)
{
	char key[24] = { 0 };
	GBFS_ENTRY *dirbase = (GBFS_ENTRY *)((char *)file + file->dir_off);
	size_t n_entries = file->dir_nmemb;
	GBFS_ENTRY *here;
	#pragma GCC diagnostic ignored "-Wstringop-truncation"
	strncpy(key, name, 24);
	here = bsearch(key, dirbase,
		n_entries, sizeof(GBFS_ENTRY),
		namecmp);
	if (!here)
		return NULL;
	if (len)
		*len = here->len;
	return (char *)file + here->data_offset;
}
void *gbfs_copy_obj(void *dst,	const GBFS_FILE *file, 	const char *name)
{
	u32 len;
	const void *src = gbfs_get_obj(file, name, &len);
	if (!src)
		return NULL;
	memcpy(dst, src, len);
	return dst;
}

const void *gbfs_get_nth_obj(const GBFS_FILE *file, size_t n, char *name, u32 *len)
{
	const GBFS_ENTRY *dirbase = (const GBFS_ENTRY *)((const char *)file + file->dir_off);
	size_t n_entries = file->dir_nmemb;
	const GBFS_ENTRY *here = dirbase + n;

	if(n >= n_entries)
		return NULL;

	if(name)
	{
		strncpy(name, here->name, 24);
		name[24] = 0;
	}

	if(len)
		*len = here->len;

	return (char *)file + here->data_offset;
}

size_t gbfs_count_objs(const GBFS_FILE *file)
{
	return file ? file->dir_nmemb : 0;
}