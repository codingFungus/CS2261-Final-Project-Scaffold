
//{{BLOCK(losebg)

//======================================================================
//
//	losebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 499 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 15968 + 2048 = 18528
//
//	Time-stamp: 2023-12-01, 15:41:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEBG_H
#define GRIT_LOSEBG_H

#define losebgTilesLen 15968
extern const unsigned short losebgTiles[7984];

#define losebgMapLen 2048
extern const unsigned short losebgMap[1024];

#define losebgPalLen 512
extern const unsigned short losebgPal[256];

#endif // GRIT_LOSEBG_H

//}}BLOCK(losebg)
