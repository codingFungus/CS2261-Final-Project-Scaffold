#ifndef GAME_H
#define GAME_H

#include "gba.h"
#include "sprites.h"
#include "mode0.h"
#include "bg_collisionmap.h"
#include "Catbgm.h"
#include "disgusted.h"
#include "Meow.h"
#include "digitalSound.h"

#ifndef max
#define max(a,b)            (((a) > (b)) ? (a) : (b))
#endif

#ifndef min
#define min(a,b)            (((a) < (b)) ? (a) : (b))
#endif

#define ORANGE_COUNT 5
#define CUCUMBER_COUNT 4
#define MAPWIDTH 512
#define MAPHEIGHT 256
#define CATNIP_COUNT 6
#define COLLISION_COOLDOWN 40
#define DISGUSTED_TIME 100

typedef struct {
    int x;
    int y;
    int speed;
    int direction;
    int active;
    int width;
    int height;
    int oamIndex;
} Bullet;

SPRITE player;
SPRITE orange[ORANGE_COUNT];
SPRITE cucumber[CUCUMBER_COUNT];
SPRITE rat;
SPRITE catnip[CATNIP_COUNT];
SPRITE dog;
SPRITE player_score;
SPRITE heart;
SPRITE player_life;

enum Code {
    ORANGE,
    CUCUMBER,
    RAT,
    DOG,
    PLAYER,
};


extern int score;

extern int hOff;
extern int vOff;

typedef enum {LEFT, RIGHT} DIRECTION;

void initGame();
void updatePlayer();
void drawPlayer();
void initPlayer();
void drawGame();
void updateGame();

// void initObject(int index, SPRITE* object, int width, int height, int x, int y, int oamIndex, int hide);

void drawOrange();
void initOrange();
void initCucumber();
void drawCucumber();
void initCatnip();
void drawCatnip();

void playerAnimation();

void playerCollision();

void initScore();
void drawScore();

void initHeart();
void drawHeart();

void initLives();
void drawLives();


#endif