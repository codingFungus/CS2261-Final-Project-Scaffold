#include "main.h"

/**
 * MileStone3
 * Finished: 
 * all game play implemented: movement, attack, cheat
 * added more rat enemies
 * added bgm and sound effects for the game
 * updated the artwork of the game
 * added time delay to win/lose state so it doesn't happen suddenly
 * made the pause screen a moving background
 * updated instructions
*/

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
    setupSounds();
    //hOff = 0;
    
    goToStart();

}
void goToStart() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG1_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | (2 << 10);
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE;

    DMANow(3, startscreenPal, BG_PALETTE, 16);

//load in start screen 1: the background of the start screen
    DMANow(3, startscreenTiles, &CHARBLOCK[0], startscreenTilesLen/2);
    DMANow(3, startscreenMap, &SCREENBLOCK[28], startscreenMapLen/2);
//load in start screen 2
    DMANow(3, startscreen2Tiles, &CHARBLOCK[1], startscreen2TilesLen/2);
    DMANow(3, startscreen2Map, &SCREENBLOCK[30], startscreen2MapLen/2);

    //DMANow(3, blankbgMap, &SCREENBLOCK[28], blankbgMapLen / 2);

    // DMANow(3, startscreenMap, &SCREENBLOCK[28], startscreenMapLen / 2);
    // DMANow(3, startscreenTiles, &CHARBLOCK[0], startscreenTilesLen / 2);
    // DMANow(3, startscreenPal, BG_PALETTE, startscreenPalLen / 2);
    
    hideSprites();
    
    waitForVBlank();

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;

    seed = 0;
    DMANow(3, shadowOAM, OAM, 512);

    state = START;

}
void start() {

    seed++;
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initGame();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstruction();
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
		hOff+=2;
	} else if (BUTTON_HELD(BUTTON_LEFT)) {
		hOff-=2;
	}
	if (BUTTON_HELD(BUTTON_UP)) {
		vOff-=2;
	} else if (BUTTON_HELD(BUTTON_DOWN)) {
		vOff+=2;
	}

    waitForVBlank();
    REG_BG1HOFF = hOff/2;
	REG_BG1VOFF = vOff/2;
    REG_BG0HOFF = hOff;
	REG_BG0VOFF = vOff;

}
void goToGame() {
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;

    waitForVBlank();
    playSoundA(Catbgm_data, Catbgm_length, 1);
   
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
    int ratsDead = 1;
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
  
    if (player.lives == 0) {
        if (delayTimer <= 0) {
            delayTimer = delay_time;
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
            delayTimer = delay_time;
        }
        delayTimer--;

        if (delayTimer == 0) {
            goToWin();
        }
    }
    

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
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    //waitForVBlank();
    //hideSprites();

    mgba_printf("paused");

    DMANow(3, newpauseScreenTiles, &CHARBLOCK[0], newpauseScreenTilesLen/2);
    DMANow(3, newpauseScreenMap, &SCREENBLOCK[28], newpauseScreenMapLen/2);
    DMANow(3, newpauseScreenPal, BG_PALETTE, newpauseScreenPalLen/2);

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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    DMANow(3, losebgMap, &SCREENBLOCK[28], losebgMapLen/2);
    DMANow(3, losebgTiles, &CHARBLOCK[0], losebgTilesLen/2);
    DMANow(3, losebgPal, BG_PALETTE, losebgPalLen/2);

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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

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
    if (state == GAME) {
        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;

        
    } else if (state == START) {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;
        REG_BG1HOFF = hOff/2;
        REG_BG1VOFF = vOff/2;
    } else {
        REG_BG0HOFF = 0;
        REG_BG0VOFF = 0;

    }
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128*4);
    
}