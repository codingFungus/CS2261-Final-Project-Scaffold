
#include "game.h"
#include "bg_collisionmap.h"

void initRat() {
    rat.width = 32;
    rat.height = 24;
    rat.x = 120;
    rat.y = 15;
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
    shadowOAM[rat.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(rat.y - vOff);
    shadowOAM[rat.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(rat.x - hOff);
    shadowOAM[rat.oamIndex].attr2 = ATTR2_TILEID(rat.currentFrame * 4, 12);

    if (rat.direction == RIGHT) {
        shadowOAM[rat.oamIndex].attr1 |= ATTR1_HFLIP;
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

        // Update rat movement logic
        if (rat.direction == RIGHT) {
            rat.x += rat.xVel;
            if (rat.x > 150) {
                rat.direction = LEFT;
            }
        } else {
            rat.x -= rat.xVel;
            if (rat.x < 50) {
                rat.direction = RIGHT;
            }
        }


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
    // if (dog.currentFrame < 4) {
    //     tileID = 16;
    // } else {
    //     tileID = 24;
    // }
    shadowOAM[dog.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(dog.y - vOff);
    shadowOAM[dog.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(dog.x - hOff);
    shadowOAM[rat.oamIndex].attr2 = ATTR2_TILEID(0, 16);

    // if (dog.direction == RIGHT) {
    //     shadowOAM[dog.oamIndex].attr1 |= ATTR1_HFLIP;
    // }



}

void updateDog() {

}
