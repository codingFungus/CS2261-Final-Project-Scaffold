
//{{BLOCK(newpauseScreen)

//======================================================================
//
//	newpauseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 155 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 4960 + 2048 = 7520
//
//	Time-stamp: 2023-11-22, 22:23:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEWPAUSESCREEN_H
#define GRIT_NEWPAUSESCREEN_H

#define newpauseScreenTilesLen 4960
extern const unsigned short newpauseScreenTiles[2480];

#define newpauseScreenMapLen 2048
extern const unsigned short newpauseScreenMap[1024];

#define newpauseScreenPalLen 512
extern const unsigned short newpauseScreenPal[256];

#endif // GRIT_NEWPAUSESCREEN_H

//}}BLOCK(newpauseScreen)
