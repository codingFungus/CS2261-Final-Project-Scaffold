
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 240x160@4, 
//	+ palette 256 entries, not compressed
//	+ 189 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 6048 + 1200 = 7760
//
//	Time-stamp: 2023-11-15, 16:19:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS_H
#define GRIT_INSTRUCTIONS_H

#define instructionsTilesLen 6048
extern const unsigned short instructionsTiles[3024];

#define instructionsMapLen 1200
extern const unsigned short instructionsMap[600];

#define instructionsPalLen 512
extern const unsigned short instructionsPal[256];

#endif // GRIT_INSTRUCTIONS_H

//}}BLOCK(instructions)
