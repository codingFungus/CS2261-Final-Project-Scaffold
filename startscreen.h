
//{{BLOCK(startscreen)

//======================================================================
//
//	startscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 303 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 9696 + 2048 = 12256
//
//	Time-stamp: 2023-11-22, 22:32:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startscreenTilesLen 9696
extern const unsigned short startscreenTiles[4848];

#define startscreenMapLen 2048
extern const unsigned short startscreenMap[1024];

#define startscreenPalLen 512
extern const unsigned short startscreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startscreen)
