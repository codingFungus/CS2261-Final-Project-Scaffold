# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "main.h" 1



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
# 5 "main.h" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 6 "main.h" 2
# 1 "mode4.h" 1
# 13 "mode4.h"
void flipPage();
void setPixel4(int x, int y, unsigned char colorIndex);
void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int x, int y, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 7 "main.h" 2
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
# 8 "main.h" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 9 "main.h" 2

# 1 "game.h" 1






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
# 11 "main.h" 2

# 1 "catSpritesheet.h" 1
# 21 "catSpritesheet.h"
extern const unsigned short catSpritesheetTiles[16384];


extern const unsigned short catSpritesheetPal[256];
# 13 "main.h" 2

# 1 "winbg.h" 1
# 22 "winbg.h"
extern const unsigned short winbgTiles[2272];


extern const unsigned short winbgMap[1024];


extern const unsigned short winbgPal[256];
# 15 "main.h" 2
# 1 "startscreen.h" 1
# 22 "startscreen.h"
extern const unsigned short startscreenTiles[5200];


extern const unsigned short startscreenMap[1024];


extern const unsigned short startscreenPal[256];
# 16 "main.h" 2
# 1 "newbg.h" 1







extern const unsigned short newbgMap[2048];
# 17 "main.h" 2
# 1 "newbg_tile.h" 1
# 21 "newbg_tile.h"
extern const unsigned short newbg_tileTiles[256];


extern const unsigned short newbg_tilePal[256];
# 18 "main.h" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3440];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 19 "main.h" 2
# 1 "losebg.h" 1
# 22 "losebg.h"
extern const unsigned short losebgTiles[9344];


extern const unsigned short losebgMap[1024];


extern const unsigned short losebgPal[256];
# 20 "main.h" 2

# 1 "enemies.h" 1






void initRat();
void drawRat();
void updateRat();
void initDog();
void drawDog();
void updateDog();
# 22 "main.h" 2
# 1 "newpauseScreen.h" 1
# 22 "newpauseScreen.h"
extern const unsigned short newpauseScreenTiles[2480];


extern const unsigned short newpauseScreenMap[1024];


extern const unsigned short newpauseScreenPal[256];
# 23 "main.h" 2
# 1 "Catbgm.h" 1


extern const unsigned int Catbgm_sampleRate;
extern const unsigned int Catbgm_length;
extern const signed char Catbgm_data[];
# 24 "main.h" 2
# 1 "disgusted.h" 1


extern const unsigned int disgusted_sampleRate;
extern const unsigned int disgusted_length;
extern const signed char disgusted_data[];
# 25 "main.h" 2
# 1 "Meow.h" 1


extern const unsigned int Meow_sampleRate;
extern const unsigned int Meow_length;
extern const signed char Meow_data[];
# 26 "main.h" 2

# 1 "blankbg.h" 1
# 22 "blankbg.h"
extern const unsigned short blankbgTiles[16];


extern const unsigned short blankbgMap[1024];


extern const unsigned short blankbgPal[256];
# 28 "main.h" 2



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
# 2 "main.c" 2
# 15 "main.c"
int delayTimer;
int state;
enum {START, GAME, INSTRUCTION, PAUSE, WIN, LOSE};

unsigned short buttons;
unsigned short oldButtons;

int seed;
char buffer[41];
int hOff = 0;
int vOff = 0;
extern int lives;
extern int score;
OBJ_ATTR shadowOAM[128];
SPRITE player;

int main() {
    initialize();


    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short*) 0x04000130);


        switch(state) {
            case START:
                start();
                break;
            case GAME:
                game();

                break;
            case INSTRUCTION:
                instruction();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
        draw();
    }
    return 0;

}

void initialize() {

    mgba_open();

    hideSprites();
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | ((1 << (8 + (0 % 4)))) | (1 << 12);

    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (1 << 14) | (0 << 7);


    buttons = (*(volatile unsigned short*) 0x04000130);
    setupSounds();


    goToStart();

}
void goToStart() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14);



    DMANow(3, startscreenMap, &((SB*) 0x06000000)[28], 2048 / 2);
    DMANow(3, startscreenTiles, &((CB*) 0x06000000)[0], 10400 / 2);
    DMANow(3, startscreenPal, ((unsigned short*) 0x05000000), 512 / 2);



    hideSprites();


    waitForVBlank();

    (*(volatile unsigned short*) 0x04000012) = 0;
    (*(volatile unsigned short*) 0x04000010) = 0;
    seed = 0;
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

    state = START;

}
void start() {

    seed++;


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {

        goToGame();
        initGame();


    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2))))) {
        goToInstruction();
    }


}
void goToGame() {

    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (1 << 14);
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);

    waitForVBlank();
    playSoundA(Catbgm_data, Catbgm_length, 1);

    DMANow(3, newbgMap, &((SB*) 0x06000000)[28], (4096)/2);
    DMANow(3, newbg_tileTiles, &((CB*) 0x06000000)[0], 512/2);
    DMANow(3, newbg_tilePal, ((unsigned short*) 0x05000000), 512/2);

    DMANow(3, catSpritesheetTiles, &((CB*) 0x06000000)[4], 32768/2);
    DMANow(3, catSpritesheetPal, ((u16*) 0x5000200), 512/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

    hideSprites();
    state = GAME;
}

void game() {

    updateGame();
    drawGame();
    int ratsDead = 1;

    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        goToPause();
    }
# 168 "main.c"
    if (player.lives == 0) {
        if (delayTimer <= 0) {
            delayTimer = 40;
        }
        delayTimer--;

        if (delayTimer == 0) {
            goToLose();
        }
    }

    for (int i = 0; i < 3; i++) {
        if (rat[i].lives > 0) {
            ratsDead = 0;
            break;
        }
    }
    if (player.score == 6 && ratsDead) {
        if (delayTimer <= 0) {
            delayTimer = 40;
        }
        delayTimer--;

        if (delayTimer == 0) {
            goToWin();
        }
    }
# 208 "main.c"
}







void goToInstruction() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14);

    DMANow(3, instructionsMap, &((SB*) 0x06000000)[28], 2048/2);
    DMANow(3, instructionsTiles, &((CB*) 0x06000000)[0], 6880/2);
    DMANow(3, instructionsPal, ((unsigned short*) 0x05000000), 512/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
    state = INSTRUCTION;


}
void instruction() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        goToStart();
    }

}

void goToPause() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((28) << 8) | (0 << 14);




    mgba_printf("paused");

    DMANow(3, newpauseScreenTiles, &((CB*) 0x06000000)[0], 4960/2);
    DMANow(3, newpauseScreenMap, &((SB*) 0x06000000)[28], 2048/2);
    DMANow(3, newpauseScreenPal, ((unsigned short*) 0x05000000), 512/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        goToGame();
    } else if ((!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2))))) {
        goToStart();
    }
}

void goToLose() {

    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((28) << 8) | (0 << 14);

    DMANow(3, losebgMap, &((SB*) 0x06000000)[28], 2048/2);
    DMANow(3, losebgTiles, &((CB*) 0x06000000)[0], 18688/2);
    DMANow(3, losebgPal, ((unsigned short*) 0x05000000), 512/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
    state = LOSE;

}
void lose() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        goToStart();
    }
}

void goToWin() {
    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((28) << 8) | (0 << 14);

    DMANow(3, winbgMap, &((SB*) 0x06000000)[28], 2048/2);
    DMANow(3, winbgTiles, &((CB*) 0x06000000)[0], 4544/2);
    DMANow(3, winbgPal, ((unsigned short*) 0x05000000), 512/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

    state = WIN;
}
void win() {

    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        goToStart();
    }

}

void draw() {
    if (state == GAME) {
        (*(volatile unsigned short*) 0x04000010) = hOff;
        (*(volatile unsigned short*) 0x04000012) = vOff;

    } else {
        (*(volatile unsigned short*) 0x04000010) = 0;
        (*(volatile unsigned short*) 0x04000012) = 0;

    }
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);

}
