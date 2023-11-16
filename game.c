#include "game.h"
#include "bg_collisionmap.h"
#include "enemies.h"

int xOrange[ORANGE_COUNT] = {160, 410, 360, 100, 320};
int yOrange[ORANGE_COUNT] = {170, 80, 16, 110, 40};

int xCuc[CUCUMBER_COUNT] = {165, 248, 464, 308};
int yCuc[CUCUMBER_COUNT] = {20, 32, 196, 212};

int xNip[CATNIP_COUNT] = {276,5, 8, 480, 200};
int yNip[CATNIP_COUNT] = {10, 160, 16, 0, 215};




void initGame() {
    initPlayer();
    initOrange();
    initCucumber();
    initCatnip();
    initRat();
}
void drawGame() {
    drawPlayer();
    drawOrange();
    drawCucumber();
    drawCatnip();
    drawRat();
}
void updateGame() {
    updatePlayer();
    updateRat();
    //updateDog();

}

unsigned char colorAt(int x, int y){
    return (((unsigned char*)bg_collisionmapBitmap)[OFFSET(x, y, 512)]);
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
    player.score = 0;
    player.isAttacking = 0;
    
}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
    shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, 0);

    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }

}


void updatePlayer() {
    //player.isMoving = 0;
    player.isMoving = 0;

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    if (BUTTON_HELD(BUTTON_UP)) {
        //player.isMoving = 1;
        if (player.y > 0 && colorAt(leftX, topY - player.yVel)
            && colorAt(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
        
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        //player.isMoving = 1;
        if (player.y + player.height < MAPHEIGHT && colorAt(leftX, bottomY + player.yVel)
            && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        //player.isMoving = 1;
        if (player.x > 0 && colorAt(leftX - player.xVel, topY)
        && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
        
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        //player.isMoving = 1;
        
        if (player.x + player.width < MAPWIDTH && colorAt(rightX + player.xVel, topY) 
            && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }

    }

    if (BUTTON_HELD(BUTTON_LSHOULDER)) {
        playerAttack();
    }

    //handles animation of player

    if (BUTTON_HELD(BUTTON_LEFT) || BUTTON_HELD(BUTTON_RIGHT) || BUTTON_HELD(BUTTON_DOWN) || BUTTON_HELD(BUTTON_UP) ||
        BUTTON_HELD(BUTTON_LSHOULDER)) {
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
        
    //camera control
    hOff = player.x - SCREENWIDTH / 2 + player.height / 2;
    vOff = player.y - SCREENHEIGHT / 2 + player.width / 2;

    hOff = max(0, hOff);
    hOff = min(MAPWIDTH - SCREENWIDTH, hOff);

    vOff = max(0, vOff);
    vOff = min(MAPHEIGHT - SCREENHEIGHT, vOff);

    playerCollision();


}

//handles collision of player and objects
void playerCollision() {
    //handles collision of the player and objects
    for (int i = 0; i < ORANGE_COUNT; i++) {
        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            orange[i].x, orange[i].y - 10, orange[i].width - 10, orange[i].height - 10)) {
                if (!player.isAttacking) {
                    playerDisgusted();
                    orange[i].hide = 0;
                    //player.lives--;
                    mgba_printf("%d\n", player.lives);
                } else {
                    mgba_printf("player attacked orange");
                    orange[i].hide = 1;
                }
                
        }
    }
    for (int j = 0; j < CUCUMBER_COUNT; j++) {
        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            cucumber[j].x + 10, cucumber[j].y, cucumber[j].width - 20, cucumber[j].height - 10)) {
                if (!player.isAttacking) {
                    playerDisgusted();
                    cucumber[j].hide = 0;
                    //player.lives--;
                    mgba_printf("%d\n", player.lives);

                } else {
                    mgba_printf("player attacked cucumber");
                    cucumber[j].hide = 1;

                }
        }

    }

    //scoring by collecting catnip

    for (int i = 0; i < CATNIP_COUNT; i++) {
        if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            catnip[i].x, catnip[i].y - 10, catnip[i].width - 10,catnip[i].height - 10)) {
                //player.score++;
                catnip[i].hide = 1;
                mgba_printf("%d\n", player.score);

        }

    }
    
}

void playerAttack() {
    mgba_printf("attack");
    player.isAttacking = 1;

    shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
    shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, 4);
    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    DMANow(3, shadowOAM, OAM, 512);

        
}

void playerDisgusted() {
    mgba_printf("disgusted");

    shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
    shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
    shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(0, 8);

    if (player.direction == RIGHT) {
        shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
    }
    DMANow(3, shadowOAM, OAM, 512);

}
void initOrange() {
    for (int i = 0; i < ORANGE_COUNT; i++) {
        orange[i].width = 32;
        orange[i].height = 32;
        orange[i].x = xOrange[i];
        orange[i].y = yOrange[i];
        
        orange[i].oamIndex = 1 + i;

        orange[i].hide = 0;
    }
}

void drawOrange() {
    for (int i = 0; i < ORANGE_COUNT; i++) {
        if (!orange[i].hide) {
            shadowOAM[orange[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(orange[i].y - vOff);
            shadowOAM[orange[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(orange[i].x - hOff);
            shadowOAM[orange[i].oamIndex].attr2 = ATTR2_TILEID(12, 8);
        } else {
            shadowOAM[orange[i].oamIndex].attr0 = ATTR0_HIDE;
        }
    
    }
    
}

void initCucumber() {
    for (int i = 0; i < CUCUMBER_COUNT; i++) {

        cucumber[i].width = 32;
        cucumber[i].height = 32;
        cucumber[i].x = xCuc[i];
        cucumber[i].y = yCuc[i];
        cucumber[i].oamIndex = 8 + i;
        cucumber[i].hide = 0;
    

    }
    
}

void drawCucumber() {
    for (int i = 0; i < CUCUMBER_COUNT; i++) {
        if (!cucumber[i].hide) {
            shadowOAM[cucumber[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(cucumber[i].y - vOff);
            shadowOAM[cucumber[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(cucumber[i].x - hOff);
            shadowOAM[cucumber[i].oamIndex].attr2 = ATTR2_TILEID(16, 8);

        } else {
            shadowOAM[cucumber[i].oamIndex].attr0 = ATTR0_HIDE;
        }
    }
    
}

void initCatnip() {
    for (int i = 0; i < CATNIP_COUNT; i++) {
        catnip[i].width = 32;
        catnip[i].height = 32;
        catnip[i].x = xNip[i];
        catnip[i].y = yNip[i];
        catnip[i].oamIndex = 15 + i;
        catnip[i].hide = 0;

    }

}
void drawCatnip() {
    for (int i = 0; i < CATNIP_COUNT; i++) {
        if (!catnip[i].hide) {
            shadowOAM[catnip[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(catnip[i].y - vOff);
            shadowOAM[catnip[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(catnip[i].x - hOff);
            shadowOAM[catnip[i].oamIndex].attr2 = ATTR2_TILEID(20, 8);
        }
        else {
            shadowOAM[catnip[i].oamIndex].attr0 = ATTR0_HIDE;
        }
        
    }

}


