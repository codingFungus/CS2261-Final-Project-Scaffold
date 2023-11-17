# 1 "display_score_life.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "display_score_life.c"

# 1 "game.h" 1



# 1 "backgroundTileMap.h" 1







extern const unsigned short backgroundTileMapMap[2048];
# 5 "game.h" 2
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short* videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 99 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 6 "game.h" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    u8 oamIndex;
    int isMoving;
    int hide;
    int lives;
    int score;
    int isAttacking;
    int cheat;
} SPRITE;
# 7 "game.h" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 8 "game.h" 2
# 1 "main.h" 1
void initialize();
void start();
void goToStart();
void game();
void goToGame();
void instruction();
void goToInstruction();
void pause();
void goToPause();
void lose();
void goToLose();
void win();
void goToWin();
void draw();
# 9 "game.h" 2
# 26 "game.h"
SPRITE player;
SPRITE orange[6];
SPRITE cucumber[4];
SPRITE rat;
SPRITE catnip[7];
SPRITE dog;
SPRITE player_score;
SPRITE heart;
SPRITE player_life;

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

void playerAnimation();

void playerCollision();

void initScore();
void drawScore();

void initHeart();
void drawHeart();

void initLives();
void drawLives();
# 3 "display_score_life.c" 2



void initScore() {
    player_score.x = 20;
    player_score.y = 0;
    player_score.width = 16;
    player_score.height = 16;
    player_score.oamIndex = 22;
    player.hide = 0;
    player_score.numFrames = 6;

}


void drawScore() {
    shadowOAM[player_score.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player_score.y) & 0xFF);
    shadowOAM[player_score.oamIndex].attr1 = (1 << 14) | ((player_score.x) & 0x1FF);
    shadowOAM[player_score.oamIndex].attr2 = (((16) * (32) + ((player.score - 1) * 2)) & 0x3FF);




}

void initHeart() {
    heart.x = 220;
    heart.y = 0;
    heart.width = 16;
    heart.height = 16;
    heart.oamIndex = 23;

}
void drawHeart() {
    shadowOAM[heart.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((heart.y) & 0xFF);
    shadowOAM[heart.oamIndex].attr1 = (1 << 14) | ((heart.x) & 0x1FF);
    shadowOAM[heart.oamIndex].attr2 = (((16) * (32) + (18)) & 0x3FF);
}

void initLives() {
    player_life.x = 200;
    player_life.y = 0;
    player_life.width = 16;
    player_life.height = 16;
    player_life.oamIndex = 24;
}
void drawLives() {
    shadowOAM[player_life.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player_life.y) & 0xFF);
    shadowOAM[player_life.oamIndex].attr1 = (1 << 14) | ((player_life.x) & 0x1FF);
    shadowOAM[player_life.oamIndex].attr2 = (((16) * (32) + ((player.lives - 1) * 2)) & 0x3FF);


}
