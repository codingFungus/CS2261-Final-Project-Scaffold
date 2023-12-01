#include "enemies.h"

const int xRat[3] = {120, 200, 350};
const int yRat[3] = {30, 50, 200};

void initRat() {
    for (int i = 0; i < 3; i++) {
        rat[i].width = 32;
        rat[i].height = 24;
        rat[i].x = xRat[i];
        rat[i].y = yRat[i];
        rat[i].oamIndex = 30 + i;
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
        shadowOAM[rat[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(rat[i].y - vOff);
        shadowOAM[rat[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(rat[i].x - hOff);
        shadowOAM[rat[i].oamIndex].attr2 = ATTR2_TILEID(rat[i].currentFrame * 4, 12);

        if (rat[i].direction == RIGHT) {
            shadowOAM[rat[i].oamIndex].attr1 |= ATTR1_HFLIP;
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

            // Update rat[i] movement logic
            if (rat[i].direction == RIGHT) {
                rat[i].x += rat[i].xVel;
                //rat[i].y += rat[i].yVel;
                if (rat[i].x > 200) {
                    rat[i].direction = LEFT;
                }
            } else {
                rat[i].x -= rat[i].xVel;
                //rat[i].y -= rat[i].yVel;
                if (rat[i].x < 20) {
                    rat[i].direction = RIGHT;
                }
            }


        } else {
            shadowOAM[rat[i].oamIndex].attr0 = ATTR0_HIDE;
        }
    }
}

