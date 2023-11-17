#include "gba.h"
#include "mode0.h"
#include "mode4.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "pauseScreen.h"
#include "pausetile.h"
#include "catSpriteSheet.h"
#include "startbgMap.h"
#include "winbg.h"
#include "startscreen.h"
#include "newbg.h"
#include "newbg_tile.h"
#include "instructions.h"
#include "losebg.h"
#include "bg_collisionmap.h"
#include "enemies.h"
#include "numbers.h"

/**
 * Finished: displaying game map, sprite basic movement, 
 * state machines(win and lose are triggered by buttons A and B currently)
 * Needed: sprite attack movements, collision map, sounds, enemies, objects
*/



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
        buttons = REG_BUTTONS;
        //mgba_printf("State: %d", state);

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
    REG_DISPCTL = MODE(0) | BG0_ENABLE | SPRITE_ENABLE;
    //background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    
    
    buttons = REG_BUTTONS;
    //hOff = 0;
    
    goToStart();

}
void goToStart() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    DMANow(3, startscreenMap, &SCREENBLOCK[28], startscreenMapLen / 2);
    DMANow(3, startscreenTiles, &CHARBLOCK[0], startscreenTilesLen / 2);
    DMANow(3, startscreenPal, BG_PALETTE, startscreenPalLen / 2);
    
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    seed = 0;

    state = START;

}
void start() {

    seed++;
    // waitForVBlank();
    // mgba_printf("debug_start");
    if (BUTTON_PRESSED(BUTTON_START)) {
        //srand(seed);
        goToGame();
        initGame();
        
        //initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstruction();
    }


}
void goToGame() {
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;

    waitForVBlank();
   
    DMANow(3, newbgMap, &SCREENBLOCK[28], newbgMapLen/2);
    DMANow(3, newbg_tileTiles, &CHARBLOCK[0], newbg_tileTilesLen/2);
    DMANow(3, newbg_tilePal, BG_PALETTE, newbg_tilePalLen/2);
    //load in spritesheet of cat
    DMANow(3, catSpritesheetTiles, &CHARBLOCK[4], catSpritesheetTilesLen/2);
    DMANow(3, catSpritesheetPal, SPRITE_PALETTE, catSpritesheetPalLen/2);

    DMANow(3, shadowOAM, OAM, 512);

    hideSprites();
    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (player.lives == 0) {
        goToLose();
    }
    if (player.score == 6 && rat.lives == 0) {
        goToWin();
    }
    
    //will implement more on win&lose state in the next milestone
    //if (BUTTON_PRESSED(BUTTON_A)) {
        //goToWin();
    //}
}
void goToInstruction() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen/2);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen/2);
    DMANow(3, instructionsPal, BG_PALETTE, instructionsPalLen/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);
    state = INSTRUCTION;
    

}
void instruction() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}

void goToPause() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;

    //waitForVBlank();
    //hideSprites();

    mgba_printf("paused");

    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pausetileTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[28], pauseScreenMapLen/2);
    DMANow(3, pauseScreenPal, BG_PALETTE, 16);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);

    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToLose() {
    //DMANow()
    REG_DISPCTL = MODE(0) | BG_ENABLE(1);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;

    DMANow(3, losebgMap, &SCREENBLOCK[28], losebgMapLen/2);
    DMANow(3, losebgTiles, &CHARBLOCK[0], losebgTilesLen/2);
    DMANow(3, losebgPal, BG_PALETTE, 16);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);
    state = LOSE;

}
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToWin() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(1);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;

    DMANow(3, winbgMap, &SCREENBLOCK[28], winbgMapLen/2);
    DMANow(3, winbgTiles, &CHARBLOCK[0], winbgTilesLen/2);
    DMANow(3, winbgPal, BG_PALETTE, winbgPalLen/2);

    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);
    
    state = WIN;
}
void win() {

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}

void draw() {
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128*4);
}