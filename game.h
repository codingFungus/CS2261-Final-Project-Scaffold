#ifndef GAME_H
#define GAME_H

#include "backgroundTileMap.h"
#include "gba.h"
#include "sprites.h"
#include "mode0.h"
#include "main.h"

#ifndef max
#define max(a,b)            (((a) > (b)) ? (a) : (b))
#endif

#ifndef min
#define min(a,b)            (((a) < (b)) ? (a) : (b))
#endif

#define ORANGE_COUNT 6
#define CUCUMBER_COUNT 4
#define MAPWIDTH 512
#define MAPHEIGHT 256
void initGame();
void updatePlayer();
void drawPlayer();
void initPlayer();
void drawGame();
//void playerCollision();
void updateGame();

#endif