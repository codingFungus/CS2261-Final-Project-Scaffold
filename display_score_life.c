
#include "game.h"

//not displaying

void initScore() {
    player_score.x = 20;
    player_score.y = 0;
    player_score.width = 16;
    player_score.height = 16;
    player_score.oamIndex = 22;
    player.hide = 0;
    player_score.numFrames = 6;

}

//second spritesheet
void drawScore() {
    shadowOAM[player_score.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player_score.y);
    shadowOAM[player_score.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(player_score.x);
    shadowOAM[player_score.oamIndex].attr2 = ATTR2_TILEID((player.score - 1) * 2, 16);
    //1 -> 0 
    //2 -> 2  
    //3 -> 4 = 3*2 -2 

}

void initHeart() {
    heart.x = 220;
    heart.y = 0;
    heart.width = 16;
    heart.height = 16;
    heart.oamIndex = 23;
    
}
void drawHeart() {
    shadowOAM[heart.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(heart.y);
    shadowOAM[heart.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(heart.x);
    shadowOAM[heart.oamIndex].attr2 = ATTR2_TILEID(18, 16);
}

void initLives() {
    player_life.x = 200;
    player_life.y = 0;
    player_life.width = 16;
    player_life.height = 16;
    player_life.oamIndex = 24;
}
void drawLives() {
    shadowOAM[player_life.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player_life.y);
    shadowOAM[player_life.oamIndex].attr1 = ATTR1_SMALL | ATTR1_X(player_life.x);
    shadowOAM[player_life.oamIndex].attr2 = ATTR2_TILEID((player.lives - 1) * 2, 16);


}
