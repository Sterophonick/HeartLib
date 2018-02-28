
//{{BLOCK(l1)

//======================================================================
//
//	l1, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ affine map, not compressed, 32x32 
//	Total size: 512 + 65536 + 1024 = 67072
//
//	Time-stamp: 2018-02-21, 10:54:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_L1_H
#define GRIT_L1_H

#define l1TilesLen 65536
extern const unsigned short l1Tiles[32768];

#define l1MapLen 1024
extern const unsigned short l1Map[512];

#define l1PalLen 512
extern const unsigned short l1Pal[256];

#endif // GRIT_L1_H

//}}BLOCK(l1)
