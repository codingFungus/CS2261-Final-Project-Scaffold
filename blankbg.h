
//{{BLOCK(blankbg)

//======================================================================
//
//	blankbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2023-12-01, 10:20:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BLANKBG_H
#define GRIT_BLANKBG_H

#define blankbgTilesLen 32
extern const unsigned short blankbgTiles[16];

#define blankbgMapLen 2048
extern const unsigned short blankbgMap[1024];

#define blankbgPalLen 512
extern const unsigned short blankbgPal[256];

#endif // GRIT_BLANKBG_H

//}}BLOCK(blankbg)
