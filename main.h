#ifndef MAIN_H
#define MAIN_H

#include "gba.h"
#include "mode0.h"
#include "mode4.h"
#include "sprites.h"
#include "print.h"

#include "game.h"

#include "catSpritesheet.h"

#include "winbg.h"
#include "startscreen.h"
#include "newbg.h"
#include "newbg_tile.h"
#include "instructions.h"
#include "losebg.h"
#include "bg_collisionmap.h"
#include "enemies.h"
#include "newpauseScreen.h"
#include "CatSong.h"
#include "disgusted.h"
#include "Meow.h"
#include "digitalSound.h"
#include "blankbg.h"
#include "startscreen1.h"
#include "startscreen2.h"

#define delay_time 40

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

#endif