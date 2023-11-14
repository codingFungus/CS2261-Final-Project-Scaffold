# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 22 "game.h"
void initGame();
void updatePlayer();
void drawPlayer();
void initPlayer();
void drawGame();

void updateGame();
# 2 "game.c" 2
# 1 "bg_collisionmap.h" 1
# 20 "bg_collisionmap.h"
extern const unsigned short bg_collisionmapBitmap[65536];
# 3 "game.c" 2

SPRITE player;
SPRITE orange[6];
SPRITE cucumber[4];

int xOrange[6] = {160, 410, 375, 104, 320};
int yOrange[6] = {170, 80, 16, 113, 40};

int xCuc[4] = {165, 248, 464, 308};
int yCuc[4] = {20, 32, 196, 212};

int score;

int hOff;
int vOff;

typedef enum {LEFT, RIGHT} DIRECTION;


void initGame() {
    initPlayer();
    initOrange();
    initCucumber();

}
void drawGame() {
    drawPlayer();
    drawOrange();
    drawCucumber();
}
void updateGame() {
    updatePlayer();

}

unsigned char colorAt(int x, int y){
    return (((unsigned char*)bg_collisionmapBitmap)[((y) * (512) + (x))]);
}


void initPlayer() {
    player.lives = 5;
    player.width = 32;
    player.height = 32;
    player.x = 20;
    player.y = 210;
    player.numFrames = 5;
    player.direction = RIGHT;

    player.timeUntilNextFrame = 10;
    player.xVel = 2;
    player.yVel = 2;
    player.currentFrame = 0;
    player.oamIndex = 0;

}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
    shadowOAM[player.oamIndex].attr2 = (((0) * (32) + (player.currentFrame * 4)) & 0x3FF);

    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
    }

}


void updatePlayer() {

    player.isMoving = 0;

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    if ((~(buttons) & ((1 << 6)))) {

        if (player.y > 0 && colorAt(leftX, topY - player.yVel)
            && colorAt(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }

    }
    if ((~(buttons) & ((1 << 7)))) {

        if (player.y + player.height < 256 && colorAt(leftX, bottomY + player.yVel)
            && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if ((~(buttons) & ((1 << 5)))) {
        player.direction = LEFT;

        if (player.x > 0 && colorAt(leftX - player.xVel, topY)
        && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }

    }
    if ((~(buttons) & ((1 << 4)))) {
        player.direction = RIGHT;


        if (player.x + player.width < 512 && colorAt(rightX + player.xVel, topY)
            && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }

    }
    if ((~(buttons) & ((1 << 9)))) {
        playerAttack();
    }

    if ((~(buttons) & ((1 << 5))) || (~(buttons) & ((1 << 4))) || (~(buttons) & ((1 << 7))) || (~(buttons) & ((1 << 6))) ||
        (~(buttons) & ((1 << 9)))) {
        player.timeUntilNextFrame--;

        if (player.timeUntilNextFrame == 0) {
            player.currentFrame++;
            if (player.currentFrame >= player.numFrames) {
                player.currentFrame = 0;
            }
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 10;
    }

    hOff = player.x - 240 / 2 + player.height / 2;
    vOff = player.y - 160 / 2 + player.width / 2;

    hOff = (((0) > (hOff)) ? (0) : (hOff));
    hOff = (((512 - 240) < (hOff)) ? (512 - 240) : (hOff));

    vOff = (((0) > (vOff)) ? (0) : (vOff));
    vOff = (((256 - 160) < (vOff)) ? (256 - 160) : (vOff));





    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 4; j++) {
            if (collision(player.x + 3, player.y, player.width - 3, player.height - 3,
                    orange[i].x, orange[i].y, orange[i].width, orange[i].height)
                    &&
                    collision(player.x + 3, player.y, player.width - 3, player.height - 3,
                    cucumber[j].x, cucumber[j].y, cucumber[j].width, cucumber[j].height)) {

                    mgba_printf("player attacked by obj");

                    player.lives--;
                    playerDisgusted();
                    mgba_printf("%d\n", player.lives);
            }

        }
    }


}
# 189 "game.c"
void playerAttack() {
    mgba_printf("attack");


    shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
    shadowOAM[player.oamIndex].attr2 = (((4) * (32) + (player.currentFrame * 4)) & 0x3FF);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
    }
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);


}

void playerDisgusted() {
    mgba_printf("disgusted");

    shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
    shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
    shadowOAM[player.oamIndex].attr2 = (((8) * (32) + (0)) & 0x3FF);

    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
    }
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

}
void initOrange() {
    mgba_printf("orange");
    for (int i = 0; i < 6; i++) {
        orange[i].width = 32;
        orange[i].height = 32;
        orange[i].x = xOrange[i];
        orange[i].y = yOrange[i];

        orange[i].oamIndex = 1 + i;


    }
}

void drawOrange() {
    for (int i = 0; i < 6; i++) {

        shadowOAM[orange[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((orange[i].y - vOff) & 0xFF);
        shadowOAM[orange[i].oamIndex].attr1 = (2 << 14) | ((orange[i].x - hOff) & 0x1FF);
        shadowOAM[orange[i].oamIndex].attr2 = (((12) * (32) + (0)) & 0x3FF);

    }

}

void initCucumber() {
    for (int i = 0; i < 4; i++) {
        cucumber[i].width = 32;
        cucumber[i].height = 32;
        cucumber[i].x = xCuc[i];
        cucumber[i].y = yCuc[i];
        cucumber[i].oamIndex = 8 + i;


    }

}

void drawCucumber() {
    for (int i = 0; i < 4; i++) {
        shadowOAM[cucumber[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((cucumber[i].y - vOff) & 0xFF);
        shadowOAM[cucumber[i].oamIndex].attr1 = (2 << 14) | ((cucumber[i].x - hOff) & 0x1FF);
        shadowOAM[cucumber[i].oamIndex].attr2 = (((12) * (32) + (4)) & 0x3FF);

    }

}
