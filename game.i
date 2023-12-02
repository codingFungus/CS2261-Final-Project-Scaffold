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
# 2 "game.c" 2

const int xOrange[5] = {160, 410, 360, 100, 320};
const int yOrange[5] = {170, 80, 16, 110, 40};

const int xCuc[4] = {165, 248, 464, 308};
const int yCuc[4] = {20, 32, 196, 212};

const int xNip[6] = {5, 8, 480, 400, 90, 350};
const int yNip[6] = {160, 16, 100, 0, 10, 70};


int collisionCooldown = 0;
int disgustedDisplayTimer = 0;

Bullet bullet[5];
# 35 "game.c"
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
    if (disgustedDisplayTimer > 0) {
        playerDisgusted();
        disgustedDisplayTimer--;

    }

    updatePlayer();
    updateRat();


}

unsigned char colorat(int x, int y){
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
    player.cheatActivated = 0;



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

        if (player.y > 0 && colorat(leftX, topY - player.yVel)
            && colorat(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }

    }
    if ((~(buttons) & ((1 << 7)))) {

        if (player.y + player.height < 256 && colorat(leftX, bottomY + player.yVel)
            && colorat(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if ((~(buttons) & ((1 << 5)))) {
        player.direction = LEFT;

        if (player.x > 0 && colorat(leftX - player.xVel, topY)
        && colorat(leftX - player.xVel, bottomY)) {

            player.x -= player.xVel;
        }

    }
    if ((~(buttons) & ((1 << 4)))) {
        player.direction = RIGHT;


        if (player.x + player.width < 512 && colorat(rightX + player.xVel, topY)
            && colorat(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }

    }


    if ((~(buttons) & ((1 << 9)))) {
        playerattack();
        player.isAttacking = 1;
        if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
            if (player.cheat == 0) {
                player.cheat = 1;
            } else {
                player.cheat = 0;
            }

        }

    }
    else {
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

    for (int i = 0; i < 5; i++) {

        if (player.cheat == 0) {
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
                        collisionCooldown = 40;
                        playSoundB(disgusted_data, disgusted_length, 0);

                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                    }

            }
        } else if (player.cheat == 1){
            if (player.direction == RIGHT) {
                if (collision(player.x + 32, player.y, player.width - 5, player.height - 5,
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
                        collisionCooldown = 40;
                        playSoundB(disgusted_data, disgusted_length, 0);

                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                    }
                }
            } else if (player.direction == LEFT) {
                if (collision(player.x, player.y, player.width - 5, player.height - 5,
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
                        collisionCooldown = 40;
                        playSoundB(disgusted_data, disgusted_length, 0);

                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                    }
                }

            }

        }
    }


    for (int j = 0; j < 4; j++) {

        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 10, player.height - 5,
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
                    playSoundB(disgusted_data, disgusted_length, 0);
                    collisionCooldown = 40;
                    mgba_printf("player lives: %d\n", player.lives);
                }
            }

        } else if (player.cheat == 1) {
            if (player.direction == RIGHT) {
                if (collision(player.x + 32, player.y, player.width - 10, player.height - 5,
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
                        playSoundB(disgusted_data, disgusted_length, 0);
                        collisionCooldown = 40;
                        mgba_printf("player lives: %d\n", player.lives);
                        }
                    }

            }
            if (player.direction == LEFT) {
                if (collision(player.x, player.y, player.width - 10, player.height - 5,
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
                            playSoundB(disgusted_data, disgusted_length, 0);
                            collisionCooldown = 40;
                            mgba_printf("player lives: %d\n", player.lives);
                        }
                }
            }

        }


    }



    for (int i = 0; i < 6; i++) {
        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            catnip[i].x, catnip[i].y + 10, catnip[i].width - 10,catnip[i].height - 10)
            &&
            !catnip[i].hide) {
                player.score++;
                player.lives++;
                catnip[i].hide = 1;
                playSoundB(Meow_data, Meow_length, 0);
                collisionCooldown = 40;
                if (player.lives >= 5) {
                    player.lives = 5;
                }
            }
        } else {
            if (player.direction == RIGHT) {
                if (collision(player.x + 32, player.y, player.width - 5, player.height - 5,
                    catnip[i].x, catnip[i].y + 10, catnip[i].width - 10,catnip[i].height - 10)
                    &&
                    !catnip[i].hide) {
                        player.score++;
                        player.lives++;
                        catnip[i].hide = 1;
                        playSoundB(Meow_data, Meow_length, 0);
                        collisionCooldown = 40;
                        if (player.lives >= 5) {
                            player.lives = 5;
                        }
                }
            }
            if (player.direction == LEFT) {
                if (collision(player.x, player.y, player.width - 5, player.height - 5,
                    catnip[i].x, catnip[i].y + 10, catnip[i].width - 10,catnip[i].height - 10)
                    &&
                    !catnip[i].hide) {
                        player.score++;
                        player.lives++;
                        catnip[i].hide = 1;
                        playSoundB(Meow_data, Meow_length, 0);
                        collisionCooldown = 40;
                        if (player.lives >= 5) {
                            player.lives = 5;
                        }
                }
            }
        }

    }


    for (int i = 0; i < 3; i++) {
        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
                rat[i].x, rat[i].y, rat[i].width, rat[i].height)
                && !rat[i].hide) {

                if (player.isAttacking && !collidedDuringAttack) {
                    collidedDuringAttack = 1;
                    mgba_printf("player attacked rat[i]");
                    mgba_printf("rat[i] lives: %d\n", rat[i].lives);
                    rat[i].lives--;
                    if (rat[i].lives == 0) {
                        rat[i].hide = 1;
                    }
                } else {
                    player.lives--;
                    collisionCooldown = 40;
                    playerDisgusted();
                    mgba_printf("player lives: %d\n", player.lives);
                    }
            }

        } else {
            if (player.direction == RIGHT) {
                if (collision(player.x + 32, player.y, player.width - 5, player.height - 5,
                    rat[i].x, rat[i].y, rat[i].width, rat[i].height)
                    && !rat[i].hide) {

                    if (player.isAttacking && !collidedDuringAttack) {
                        collidedDuringAttack = 1;
                        mgba_printf("player attacked rat[i]");
                        mgba_printf("rat[i] lives: %d\n", rat[i].lives);
                        rat[i].lives--;
                        if (rat[i].lives == 0) {
                            rat[i].hide = 1;
                        }
                    } else {
                        player.lives--;
                        collisionCooldown = 40;
                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                        }
                }

            }
            if (player.direction == LEFT) {
                if (collision(player.x, player.y, player.width - 5, player.height - 5,
                    rat[i].x, rat[i].y, rat[i].width, rat[i].height)
                    && !rat[i].hide) {

                    if (player.isAttacking && !collidedDuringAttack) {
                        collidedDuringAttack = 1;
                        mgba_printf("player attacked rat[i]");
                        mgba_printf("rat[i] lives: %d\n", rat[i].lives);
                        rat[i].lives--;
                        if (rat[i].lives == 0) {
                            rat[i].hide = 1;
                        }
                    } else {
                        player.lives--;
                        collisionCooldown = 40;
                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                        }
                }

            }
        }


    }



}

void playerattack() {
    mgba_printf("attack");

    if (player.cheat == 0) {
        shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((4) * (32) + (player.currentFrame * 4)) & 0x3FF);
        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        }
    } else {
            shadowOAM[player.oamIndex].attr0 = (0 << 13) | (1 << 14) | ((player.y - vOff) & 0xFF);
            shadowOAM[player.oamIndex].attr1 = (3 << 14) | ((player.x - hOff) & 0x1FF);
            shadowOAM[player.oamIndex].attr2 = (((4) * (32) + (24)) & 0x3FF);
        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        }

    }


    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);


}

void playerDisgusted() {
    mgba_printf("disgusted");
    if (disgustedDisplayTimer == 0) {
        shadowOAM[player.oamIndex].attr0 = (0 << 13) | (0 << 14) | ((player.y - vOff) & 0xFF);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((8) * (32) + (0)) & 0x3FF);

        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        }

        DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
        disgustedDisplayTimer = 100;
    } else {
        disgustedDisplayTimer--;
    }

}
void initOrange() {
    for (int i = 0; i < 5; i++) {
        orange[i].width = 32;
        orange[i].height = 32;
        orange[i].x = xOrange[i];
        orange[i].y = yOrange[i];

        orange[i].oamIndex = 1 + i;

        orange[i].hide = 0;
    }
}

void drawOrange() {
    for (int i = 0; i < 5; i++) {
        shadowOAM[orange[i].oamIndex].attr0 = (0 << 13) | (0 << 14) | ((orange[i].y - vOff) & 0xFF);
        shadowOAM[orange[i].oamIndex].attr1 = (2 << 14) | ((orange[i].x - hOff) & 0x1FF);
        shadowOAM[orange[i].oamIndex].attr2 = (((8) * (32) + (12)) & 0x3FF);

        if (orange[i].hide) {
            shadowOAM[orange[i].oamIndex].attr0 = (2 << 8);
        }
    }

}
# 589 "game.c"
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
    for (int i = 0; i < 6; i++) {
        catnip[i].width = 32;
        catnip[i].height = 32;
        catnip[i].x = xNip[i];
        catnip[i].y = yNip[i];
        catnip[i].oamIndex = 15 + i;
        catnip[i].hide = 0;

    }

}
void drawCatnip() {
    for (int i = 0; i < 6; i++) {
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
