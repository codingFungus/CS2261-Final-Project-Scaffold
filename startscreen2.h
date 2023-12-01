
//{{BLOCK(startscreen2)

//======================================================================
//
//	startscreen2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2023-12-01, 15:49:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN2_H
#define GRIT_STARTSCREEN2_H

#define startscreen2TilesLen 32
extern const unsigned short startscreen2Tiles[16];

#define startscreen2MapLen 2048
extern const unsigned short startscreen2Map[1024];

#define startscreen2PalLen 512
extern const unsigned short startscreen2Pal[256];

#endif // GRIT_STARTSCREEN2_H

//}}BLOCK(startscreen2)
