/********************************************************
* Tutorial Example
* By Ben Baker (Headspin)
********************************************************/

int __gba_multiboot;
#include "libheart.h"

int main(void)
{	
	const GBFS_FILE *dat = find_first_gbfs_file(find_first_gbfs_file);
	
	hrt_SetMode(MODE_3 | BG2_ENABLE); /* Enable mode 3 and turn on background 2. */ 
	REG_BG2CNT = 0; /* Clear all BG2 parameters. */ 

	hrt_LZ77UnCompVRAM((u32) gbfs_get_obj(dat, "titlescreen.lz", NULL), (u32)VideoBuffer); 

	while(1) {};
}
