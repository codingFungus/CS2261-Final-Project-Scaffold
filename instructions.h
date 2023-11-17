
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 256x128@4, 
//	+ palette 256 entries, not compressed
//	+ 201 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x16 
//	Total size: 512 + 6432 + 1024 = 7968
//
//	Time-stamp: 2023-11-16, 16:30:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS_H
#define GRIT_INSTRUCTIONS_H

#define instructionsTilesLen 6432
extern const unsigned short instructionsTiles[3216];

#define instructionsMapLen 1024
extern const unsigned short instructionsMap[512];

#define instructionsPalLen 512
extern const unsigned short instructionsPal[256];

#endif // GRIT_INSTRUCTIONS_H

//}}BLOCK(instructions)
