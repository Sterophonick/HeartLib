
//{{BLOCK(hrt_logo)

//======================================================================
//
//	hrt_logo, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 65536 + 2048 = 68096
//
//	Time-stamp: 2018-02-20, 08:33:34
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HRT_LOGO_H
#define GRIT_HRT_LOGO_H

#define hrt_logoTilesLen 65536
extern const unsigned short hrt_logoTiles[32768];

#define hrt_logoMapLen 2048
extern const unsigned short hrt_logoMap[1024];

#define hrt_logoPalLen 512
extern const unsigned short hrt_logoPal[256];

#endif // GRIT_HRT_LOGO_H

//}}BLOCK(hrt_logo)
