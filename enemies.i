# 1 "enemies.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemies.c"
# 1 "enemies.h" 1


# 1 "game.h" 1



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
# 5 "game.h" 2
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
    int cheatActivated;
} SPRITE;
# 6 "game.h" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 7 "game.h" 2
# 1 "bg_collisionmap.h" 1
# 20 "bg_collisionmap.h"
extern const unsigned short bg_collisionmapBitmap[65536];
# 8 "game.h" 2
# 1 "Catbgm.h" 1


extern const unsigned int Catbgm_sampleRate;
extern const unsigned int Catbgm_length;
extern const signed char Catbgm_data[];
# 9 "game.h" 2
# 1 "disgusted.h" 1


extern const unsigned int disgusted_sampleRate;
extern const unsigned int disgusted_length;
extern const signed char disgusted_data[];
# 10 "game.h" 2
# 1 "Meow.h" 1


extern const unsigned int Meow_sampleRate;
extern const unsigned int Meow_length;
extern const signed char Meow_data[];
# 11 "game.h" 2
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 12 "game.h" 2
# 29 "game.h"
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
SPRITE orange[5];
SPRITE cucumber[4];
SPRITE rat[3];
SPRITE catnip[6];
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
# 4 "enemies.h" 2



void initRat();
void drawRat();
void updateRat();
void initDog();
void drawDog();
void updateDog();
# 2 "enemies.c" 2

const int xRat[3] = {120, 200, 350};
const int yRat[3] = {30, 50, 200};

void initRat() {
    for (int i = 0; i < 3; i++) {
        rat[i].width = 32;
        rat[i].height = 24;
        rat[i].x = xRat[i];
        rat[i].y = yRat[i];
        rat[i].oamIndex = 15 + i;
        rat[i].xVel = 1;
        rat[i].yVel = 1;
        rat[i].direction = RIGHT;
        rat[i].timeUntilNextFrame = 10;
        rat[i].currentFrame = 0;
        rat[i].numFrames = 7;
        rat[i].isAnimating = 1;
        rat[i].hide = 0;
        rat[i].lives = 3;

    }

}

void drawRat() {
    for (int i = 0; i < 3; i++) {
        shadowOAM[rat[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((rat[i].y - vOff) & 0xFF);
        shadowOAM[rat[i].oamIndex].attr1 = (2 << 14) | ((rat[i].x - hOff) & 0x1FF);
        shadowOAM[rat[i].oamIndex].attr2 = (((12) * (32) + (rat[i].currentFrame * 4)) & 0x3FF);

        if (rat[i].direction == RIGHT) {
            shadowOAM[rat[i].oamIndex].attr1 |= (1 << 12);
        }
    }
}

void updateRat() {
    for (int i = 0; i < 3; i++) {

        if (!rat[i].hide) {
            if (rat[i].isAnimating) {
                rat[i].timeUntilNextFrame--;

                if (rat[i].timeUntilNextFrame == 0) {
                    rat[i].currentFrame++;
                    if (rat[i].currentFrame >= rat[i].numFrames) {
                        rat[i].currentFrame = 0;
                    }
                    rat[i].timeUntilNextFrame = 10;
                }
            }


            if (rat[i].direction == RIGHT) {
                rat[i].x += rat[i].xVel;

                if (rat[i].x > 200) {
                    rat[i].direction = LEFT;
                }
            } else {
                rat[i].x -= rat[i].xVel;

                if (rat[i].x < 20) {
                    rat[i].direction = RIGHT;
                }
            }


        } else {
            shadowOAM[rat[i].oamIndex].attr0 = (2 << 8);
        }
    }
}
