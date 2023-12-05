
//{{BLOCK(winbg)

//======================================================================
//
//	winbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 141 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 4512 + 2048 = 7072
//
//	Time-stamp: 2023-12-04, 19:10:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBG_H
#define GRIT_WINBG_H

#define winbgTilesLen 4512
extern const unsigned short winbgTiles[2256];

#define winbgMapLen 2048
extern const unsigned short winbgMap[1024];

#define winbgPalLen 512
extern const unsigned short winbgPal[256];

#endif // GRIT_WINBG_H

//}}BLOCK(winbg)
