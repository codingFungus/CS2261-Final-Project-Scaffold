#include "game.h"
#include "bg_collisionmap.h"

SPRITE player;
SPRITE orange[ORANGE_COUNT];
SPRITE cucumber[CUCUMBER_COUNT];

int xOrange[ORANGE_COUNT] = {160, 410, 375, 104, 320};
int yOrange[ORANGE_COUNT] = {170, 80, 16, 113, 40};

int xCuc[CUCUMBER_COUNT] = {165, 248, 464, 308};
int yCuc[CUCUMBER_COUNT] = {20, 32, 196, 212};

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
        
    hOff = player.x - SCREENWIDTH / 2 + player.height / 2;
    vOff = player.y - SCREENHEIGHT / 2 + player.width / 2;

    hOff = max(0, hOff);
    hOff = min(MAPWIDTH - SCREENWIDTH, hOff);

    vOff = max(0, vOff);
    vOff = min(MAPHEIGHT - SCREENHEIGHT, vOff);




    //player collision method
    for (int i = 0; i < ORANGE_COUNT; i++) {
        for (int j = 0; j < CUCUMBER_COUNT; j++) {
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

// void playerCollision() {
//     for (int i = 0; i < ORANGE_COUNT; i++) {
//         for (int j = 0; j < CUCUMBER_COUNT; j++) {
//             if (collision(player.x + 3, player.y, player.width - 3, player.height - 3,
//                     orange[i].x, orange[i].y, orange[i].width, orange[i].height)
//                     && 
//                     collision(player.x + 3, player.y, player.width - 3, player.height - 3,
//                     cucumber[j].x, cucumber[j].y, cucumber[j].width, cucumber[j].height)) {

//                     player.lives--;
//                     playerDisgusted();
//                     mgba_printf("player attacked by obj");
//                     mgba_printf("%d\n", player.lives);
//             }
                
//         }
//     }
    
// }

void playerAttack() {
    mgba_printf("attack");
    //player.timeUntilNextFrame = 10;

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
    mgba_printf("orange");
    for (int i = 0; i < ORANGE_COUNT; i++) {
        orange[i].width = 32;
        orange[i].height = 32;
        orange[i].x = xOrange[i];
        orange[i].y = yOrange[i];
        
        orange[i].oamIndex = 1 + i;

        //orange[i].hide = 0;
    }
}

void drawOrange() {
    for (int i = 0; i < ORANGE_COUNT; i++) {
        
        shadowOAM[orange[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(orange[i].y - vOff);
        shadowOAM[orange[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(orange[i].x - hOff);
        shadowOAM[orange[i].oamIndex].attr2 = ATTR2_TILEID(0, 12);

    }
    
}

void initCucumber() {
    for (int i = 0; i < CUCUMBER_COUNT; i++) {
        cucumber[i].width = 32;
        cucumber[i].height = 32;
        cucumber[i].x = xCuc[i];
        cucumber[i].y = yCuc[i];
        cucumber[i].oamIndex = 8 + i;
    

    }
    
}

void drawCucumber() {
    for (int i = 0; i < CUCUMBER_COUNT; i++) {
        shadowOAM[cucumber[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(cucumber[i].y - vOff);
        shadowOAM[cucumber[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(cucumber[i].x - hOff);
        shadowOAM[cucumber[i].oamIndex].attr2 = ATTR2_TILEID(4, 12);

    }
    
}