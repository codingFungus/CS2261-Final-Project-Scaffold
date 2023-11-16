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
#define CATNIP_COUNT 7

SPRITE player;
SPRITE orange[ORANGE_COUNT];
SPRITE cucumber[CUCUMBER_COUNT];
SPRITE rat;
SPRITE catnip[CATNIP_COUNT];
SPRITE dog;

int score;

extern int hOff;
extern int vOff;

typedef enum {LEFT, RIGHT} DIRECTION;

void initGame();
void updatePlayer();
void drawPlayer();
void initPlayer();
void drawGame();
void updateGame();

void drawOrange();
void initOrange();
void initCucumber();
void drawCucumber();
void initCatnip();
void drawCatnip();

void playerCollision();


#endif