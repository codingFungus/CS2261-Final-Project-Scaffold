#include "game.h"

const int xOrange[ORANGE_COUNT] = {160, 410, 360, 100, 320};
const int yOrange[ORANGE_COUNT] = {170, 80, 16, 110, 40};

const int xCuc[CUCUMBER_COUNT] = {165, 248, 464, 308};
const int yCuc[CUCUMBER_COUNT] = {20, 32, 196, 212};

const int xNip[CATNIP_COUNT] = {5, 8, 480, 400, 90, 350};
const int yNip[CATNIP_COUNT] = {160, 16, 100, 0, 10, 70};


int collisionCooldown = 0;
int disgustedDisplayTimer = 0;

Bullet bullet[5];

//wip
// void objectFactory(enum Code code) {
//     if (code == ORANGE) {
//         for (int i = 0; i < ORANGE_xCOUNT; ++i) {
//             initObject(i, orange, 32, 32, xOrange[i], yOrange[i], 1 + i, 0);
//         }
//     } else if (code == CUCUMBER) {

//     } else if (code == rat[i]) {

//     } else if (code == DOG) {

//     }

    
// }

void initGame() {
    initPlayer();

    //objectFactory(ORANGE);

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
    return (((unsigned char*)bg_collisionmapBitmap)[OFFSET(x, y, 512)]);
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
        
        shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
        shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, 0);

    }
    
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
        if (player.y > 0 && colorat(leftX, topY - player.yVel)
            && colorat(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
        
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        //player.isMoving = 1;
        if (player.y + player.height < MAPHEIGHT && colorat(leftX, bottomY + player.yVel)
            && colorat(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        //player.isMoving = 1;
        if (player.x > 0 && colorat(leftX - player.xVel, topY)
        && colorat(leftX - player.xVel, bottomY)) {
            
            player.x -= player.xVel;
        }
        
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        //player.isMoving = 1;
        
        if (player.x + player.width < MAPWIDTH && colorat(rightX + player.xVel, topY) 
            && colorat(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }

    }

    //cheats bypressting buttonA while attacking
    if (BUTTON_HELD(BUTTON_LSHOULDER)) {
        playerattack();
        player.isAttacking = 1;
        if (BUTTON_PRESSED(BUTTON_A)) {
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
    //handles animation of player

    if (BUTTON_HELD(BUTTON_LEFT) || BUTTON_HELD(BUTTON_RIGHT) || BUTTON_HELD(BUTTON_DOWN) || BUTTON_HELD(BUTTON_UP) ||
        BUTTON_HELD(BUTTON_LSHOULDER)) {
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
        
    //camera control
    hOff = player.x - SCREENWIDTH / 2 + player.height / 2;
    vOff = player.y - SCREENHEIGHT / 2 + player.width / 2;

    hOff = max(0, hOff);
    hOff = min(MAPWIDTH - SCREENWIDTH, hOff);

    vOff = max(0, vOff);
    vOff = min(MAPHEIGHT - SCREENHEIGHT, vOff);

    playerCollision();

    DMANow(3, shadowOAM, OAM, 512);


}

//handles collision of player and objects
void playerCollision() {
    //handles collision of the player and objects

    int collidedDuringAttack = 0;
    if (collisionCooldown > 0) {
        return;
    }
    //loses life by touching orange
    for (int i = 0; i < ORANGE_COUNT; i++) {
        //int attackOffset = (player.direction == RIGHT) ? 15: -15;
        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
                orange[i].x, orange[i].y - 10, orange[i].width - 10, orange[i].height - 10)
                &&
                !orange[i].hide) {
                    if (player.isAttacking && !collidedDuringAttack) {
                        collidedDuringAttack = 1;
                        orange[i].hide = 1;
                        mgba_printf("player attacked orange");
                        playSoundB(crushing_orange_data, crushing_orange_length, 0);
                    } else {
                        playerDisgusted();
                        player.lives--;
                        collisionCooldown = COLLISION_COOLDOWN;
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
                        playSoundB(crushing_orange_data, crushing_orange_length, 0);
                    } else {
                        playerDisgusted();
                        player.lives--;
                        collisionCooldown = COLLISION_COOLDOWN;
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
                        playSoundB(crushing_orange_data, crushing_orange_length, 0);
                        orange[i].hide = 1;
                        mgba_printf("player attacked orange");
                    } else {
                        playerDisgusted();
                        player.lives--;
                        collisionCooldown = COLLISION_COOLDOWN;
                        playSoundB(disgusted_data, disgusted_length, 0);
                        
                        playerDisgusted();
                        mgba_printf("player lives: %d\n", player.lives);
                    }
                }

            }
            
        }
    }

    //loses life by touching cucumber
    for (int j = 0; j < CUCUMBER_COUNT; j++) {
        //int attackOffset = (player.direction == RIGHT) ? 15: -15;
        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 10, player.height - 5,
            cucumber[j].x + 10, cucumber[j].y, cucumber[j].width - 20, cucumber[j].height - 10)
            &&
            !cucumber[j].hide) {
                if (player.isAttacking && !collidedDuringAttack) {
                    collidedDuringAttack = 1;
                    playSoundB(crushing_orange_data, crushing_orange_length, 0);
                    cucumber[j].hide = 1;
                    mgba_printf("player attacked cucumber");

                } else {
                    playerDisgusted();
                    player.lives--;
                    playSoundB(disgusted_data, disgusted_length, 0);
                    collisionCooldown = COLLISION_COOLDOWN;
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
                        playSoundB(crushing_orange_data, crushing_orange_length, 0);
                        cucumber[j].hide = 1;
                        mgba_printf("player attacked cucumber");

                    } else {
                        playerDisgusted();
                        player.lives--;
                        playSoundB(disgusted_data, disgusted_length, 0);
                        collisionCooldown = COLLISION_COOLDOWN;
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
                            playSoundB(crushing_orange_data, crushing_orange_length, 0);
                            cucumber[j].hide = 1;
                            mgba_printf("player attacked cucumber");

                        } else {
                            playerDisgusted();
                            player.lives--;
                            playSoundB(disgusted_data, disgusted_length, 0);
                            collisionCooldown = COLLISION_COOLDOWN;
                            mgba_printf("player lives: %d\n", player.lives);
                        }
                }
            }
            
        } 
        

    }

    //scoring by collecting catnip

    for (int i = 0; i < CATNIP_COUNT; i++) {
        if (player.cheat == 0) {
            if (collision(player.x + 5, player.y, player.width - 5, player.height - 5,
            catnip[i].x, catnip[i].y + 10, catnip[i].width - 10,catnip[i].height - 10)
            &&
            !catnip[i].hide) {
                player.score++;
                player.lives++;
                catnip[i].hide = 1;
                playSoundB(Meow_data, Meow_length, 0);
                collisionCooldown = COLLISION_COOLDOWN;
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
                        collisionCooldown = COLLISION_COOLDOWN;
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
                        collisionCooldown = COLLISION_COOLDOWN;
                        if (player.lives >= 5) {
                            player.lives = 5;
                        }
                }
            }
        }
        
    }

    //player being attacked by enemies
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
                    collisionCooldown = COLLISION_COOLDOWN;
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
                        collisionCooldown = COLLISION_COOLDOWN;
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
                        collisionCooldown = COLLISION_COOLDOWN;
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
        shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
        shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, 4);
        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
        }
    } else {
            shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(player.y - vOff);
            shadowOAM[player.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(player.x - hOff);
            shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(24, 4);
        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
        }

    }

    
    DMANow(3, shadowOAM, OAM, 512);

        
}

void playerDisgusted() {
    mgba_printf("disgusted");
    if (disgustedDisplayTimer == 0) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
        shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(0, 8);

        if (player.direction == RIGHT) {
            shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
        }

        DMANow(3, shadowOAM, OAM, 512);
        disgustedDisplayTimer = DISGUSTED_TIME;
    } else {
        disgustedDisplayTimer--;
    }

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
        shadowOAM[orange[i].oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(orange[i].y - vOff);
        shadowOAM[orange[i].oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(orange[i].x - hOff);
        shadowOAM[orange[i].oamIndex].attr2 = ATTR2_TILEID(12, 8);

        if (orange[i].hide) {
            shadowOAM[orange[i].oamIndex].attr0 = ATTR0_HIDE;
        }
    }
    
}

// Proof of concept, could use more work
// Basic idea ---> use parameters to make more generic function
// That way you repeat less code
// void initObject(int index, SPRITE* object, int width, int height, int x, int y, int oamIndex, int hide) {
//     object[index].width = width;
//     object[index].height = height;
//     object[index].x = x;
//     object[index].y = y;
//     object[index].oamIndex = oamIndex;
//     object[index].hide = hide;
// }


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


