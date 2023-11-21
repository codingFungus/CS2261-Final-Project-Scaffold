#ifndef GAME_H
#define GAME_H

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
#define COLLISION_COOLDOWN 30
#define DISGUSTED_TIME 60

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

int xOrange[ORANGE_COUNT] = {160, 410, 360, 100, 320};
int yOrange[ORANGE_COUNT] = {170, 80, 16, 110, 40};

int xCuc[CUCUMBER_COUNT] = {165, 248, 464, 308};
int yCuc[CUCUMBER_COUNT] = {20, 32, 196, 212};

int xNip[CATNIP_COUNT] = {276,5, 8, 480, 200};
int yNip[CATNIP_COUNT] = {10, 150, 16, 0, 215};

int collisionCooldown = 0;
int disgustedDisplayTimer = 0;

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

void initObject(int index, SPRITE* object, int width, int height, int x, int y, int oamIndex, int hide);

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