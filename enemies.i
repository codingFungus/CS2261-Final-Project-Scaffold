# 1 "enemies.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemies.c"
# 1 "enemies.h" 1



void initRat();
void drawRat();
void updateRat();
void initDog();
void drawDog();
void updateDog();
# 2 "enemies.c" 2
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
# 3 "enemies.c" 2
# 1 "bg_collisionmap.h" 1
# 20 "bg_collisionmap.h"
extern const unsigned short bg_collisionmapBitmap[65536];
# 4 "enemies.c" 2

void initRat() {
    rat.width = 32;
    rat.height = 24;
    rat.x = 120;
    rat.y = 30;
    rat.oamIndex = 15;
    rat.xVel = 1;
    rat.yVel = 1;
    rat.direction = RIGHT;
    rat.timeUntilNextFrame = 10;
    rat.currentFrame = 0;
    rat.numFrames = 7;
    rat.isAnimating = 1;
    rat.hide = 0;
    rat.lives = 3;


}

void drawRat() {
    shadowOAM[rat.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((rat.y - vOff) & 0xFF);
    shadowOAM[rat.oamIndex].attr1 = (2 << 14) | ((rat.x - hOff) & 0x1FF);
    shadowOAM[rat.oamIndex].attr2 = (((12) * (32) + (rat.currentFrame * 4)) & 0x3FF);

    if (rat.direction == RIGHT) {
        shadowOAM[rat.oamIndex].attr1 |= (1 << 12);
    }


}

void updateRat() {
    if (!rat.hide) {
        if (rat.isAnimating) {
            rat.timeUntilNextFrame--;

            if (rat.timeUntilNextFrame == 0) {
                rat.currentFrame++;
                if (rat.currentFrame >= rat.numFrames) {
                    rat.currentFrame = 0;
                }
                rat.timeUntilNextFrame = 10;
            }
        }


        if (rat.direction == RIGHT) {
            rat.x += rat.xVel;

            if (rat.x > 200) {
                rat.direction = LEFT;
            }
        } else {
            rat.x -= rat.xVel;

            if (rat.x < 20) {
                rat.direction = RIGHT;
            }
        }


    } else {
        shadowOAM[rat.oamIndex].attr0 = (2 << 8);
    }
}

void initDog() {
    dog.width = 64;
    dog.height = 64;
    dog.currentFrame = 0;
    dog.direction = RIGHT;
    dog.isAnimating = 1;
    dog.hide = 0;
    dog.lives = 8;
    dog.oamIndex = 14;
    dog.numFrames = 8;
    dog.timeUntilNextFrame = 10;
    dog.x = 100;
    dog.y = 200;


}

void drawDog() {
    int tileID;





    shadowOAM[dog.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((dog.y - vOff) & 0xFF);
    shadowOAM[dog.oamIndex].attr1 = (3 << 14) | ((dog.x - hOff) & 0x1FF);
    shadowOAM[rat.oamIndex].attr2 = (((16) * (32) + (0)) & 0x3FF);







}

void updateDog() {

}
