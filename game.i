# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 25 "game.h"
SPRITE player;
SPRITE orange[6];
SPRITE cucumber[4];
SPRITE rat;
SPRITE catnip[7];
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
# 2 "game.c" 2

const int xOrange[6] = {160, 410, 360, 100, 320};
const int yOrange[6] = {170, 80, 16, 110, 40};

const int xCuc[4] = {165, 248, 464, 308};
const int yCuc[4] = {20, 32, 196, 212};

const int xNip[7] = {276,5, 8, 480, 200};
const int yNip[7] = {10, 160, 16, 0, 215};

int collisionCooldown = 0;
int disgustedDisplayTimer = 0;
# 32 "game.c"
void initGame() {
    initPlayer();



    initOrange();
    initCucumber();
    initCatnip();
    initRat();
    initScore();
    initHeart();
    initLives();
}
void drawGame() {
    drawPlayer();
    drawOrange();
    drawCucumber();
    drawCatnip();
    drawRat();
    drawScore();
    drawHeart();
    drawLives();

}
void updateGame() {
    if (collisionCooldown > 0) {
        collisionCooldown--;
    }







    updatePlayer();
    updateRat();


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
    player.numFrames = 7;
    player.direction = RIGHT;

    player.timeUntilNextFrame = 10;
    player.xVel = 2;
    player.yVel = 2;
    player.currentFrame = 0;
    player.oamIndex = 0;
    player.score = 0;
    player.isAttacking = 0;
    player.cheat = 0;

}

void drawPlayer() {
    if (player.cheat == 0) {
        shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + (player.currentFrame * 4)) & 0x3FF);

    }

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
        player.isAttacking = 1;




    } else {
        player.isAttacking = 0;
    }
    playerAnimation();



}

void playerAnimation() {


    if ((~(buttons) & ((1 << 5))) || (~(buttons) & ((1 << 4))) || (~(buttons) & ((1 << 7))) || (~(buttons) & ((1 << 6))) ||
        (~(buttons) & ((1 << 9)))) {
        player.timeUntilNextFrame--;

        if (player.timeUntilNextFrame == 0) {
            player.currentFrame++;

            if (player.currentFrame >= 6) {
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

    playerCollision();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);


}


void playerCollision() {


    int collidedDuringAttack = 0;
    if (collisionCooldown > 0) {
        return;
    }

    for (int i = 0; i < 6; i++) {
        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            orange[i].x, orange[i].y - 10, orange[i].width - 10, orange[i].height - 10)
            &&
            !orange[i].hide) {
                if (player.isAttacking && !collidedDuringAttack) {
                    collidedDuringAttack = 1;

                    orange[i].hide = 1;
                    mgba_printf("player attacked orange");
                } else {
                    playerDisgusted();
                    player.lives--;
                    collisionCooldown = 30;
                    playerDisgusted();
                    mgba_printf("player lives: %d\n", player.lives);
                }

        }
    }


    for (int j = 0; j < 4; j++) {
        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            cucumber[j].x + 10, cucumber[j].y, cucumber[j].width - 20, cucumber[j].height - 10)
            &&
            !cucumber[j].hide) {
                if (player.isAttacking && !collidedDuringAttack) {
                    collidedDuringAttack = 1;

                    cucumber[j].hide = 1;
                    mgba_printf("player attacked cucumber");

                } else {
                    playerDisgusted();
                    player.lives--;
                    collisionCooldown = 30;
                    mgba_printf("player lives: %d\n", player.lives);


                }
        }

    }



    for (int i = 0; i < 7; i++) {




        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            catnip[i].x, catnip[i].y + 10, catnip[i].width - 10,catnip[i].height - 10)
            &&
            !catnip[i].hide) {


                player.score++;
                player.lives++;
                catnip[i].hide = 1;

                collisionCooldown = 30;
                if (player.score >= 6) {
                    player.score = 6;

                }
                if (player.lives >= 5) {
                    player.lives = 5;
                }

                mgba_printf("player score: %d\n", player.score);
                mgba_printf("player lives: %d\n", player.lives);

        }
    }



    if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
        rat.x, rat.y, rat.width, rat.height)
        && !rat.hide) {
        if (player.isAttacking && !collidedDuringAttack) {
            collidedDuringAttack = 1;
            mgba_printf("player attacked rat");
            mgba_printf("rat lives: %d\n", rat.lives);
            rat.lives--;
            if (rat.lives == 0) {
                rat.hide = 1;
            }
        } else {
            player.lives--;
            collisionCooldown = 30;
            playerDisgusted();
            mgba_printf("player lives: %d\n", player.lives);
        }
    }



}

void playerAttack() {
    mgba_printf("attack");

    if (player.cheat == 0) {
        shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((4) * (32) + (player.currentFrame * 4)) & 0x3FF);
        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        }
# 347 "game.c"
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
    for (int i = 0; i < 6; i++) {
        orange[i].width = 32;
        orange[i].height = 32;
        orange[i].x = xOrange[i];
        orange[i].y = yOrange[i];

        orange[i].oamIndex = 1 + i;

        orange[i].hide = 0;
    }
}

void drawOrange() {
    for (int i = 0; i < 6; i++) {
        shadowOAM[orange[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((orange[i].y - vOff) & 0xFF);
        shadowOAM[orange[i].oamIndex].attr1 = (2 << 14) | ((orange[i].x - hOff) & 0x1FF);
        shadowOAM[orange[i].oamIndex].attr2 = (((8) * (32) + (12)) & 0x3FF);

        if (orange[i].hide) {
            shadowOAM[orange[i].oamIndex].attr0 = (2 << 8);
        }
    }

}
# 408 "game.c"
void initCucumber() {
    for (int i = 0; i < 4; i++) {

        cucumber[i].width = 32;
        cucumber[i].height = 32;
        cucumber[i].x = xCuc[i];
        cucumber[i].y = yCuc[i];
        cucumber[i].oamIndex = 8 + i;
        cucumber[i].hide = 0;


    }

}

void drawCucumber() {
    for (int i = 0; i < 4; i++) {
        if (!cucumber[i].hide) {
            shadowOAM[cucumber[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((cucumber[i].y - vOff) & 0xFF);
            shadowOAM[cucumber[i].oamIndex].attr1 = (2 << 14) | ((cucumber[i].x - hOff) & 0x1FF);
            shadowOAM[cucumber[i].oamIndex].attr2 = (((8) * (32) + (16)) & 0x3FF);

        } else {
            shadowOAM[cucumber[i].oamIndex].attr0 = (2 << 8);
        }
    }

}

void initCatnip() {
    for (int i = 0; i < 7; i++) {
        catnip[i].width = 32;
        catnip[i].height = 32;
        catnip[i].x = xNip[i];
        catnip[i].y = yNip[i];
        catnip[i].oamIndex = 15 + i;
        catnip[i].hide = 0;

    }

}
void drawCatnip() {
    for (int i = 0; i < 7; i++) {
        if (!catnip[i].hide) {
            shadowOAM[catnip[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((catnip[i].y - vOff) & 0xFF);
            shadowOAM[catnip[i].oamIndex].attr1 = (2 << 14) | ((catnip[i].x - hOff) & 0x1FF);
            shadowOAM[catnip[i].oamIndex].attr2 = (((8) * (32) + (20)) & 0x3FF);
        }
        else {
            shadowOAM[catnip[i].oamIndex].attr0 = (2 << 8);
        }

    }

}
