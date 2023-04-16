#ifndef GAME_H
#define GAME_H

#include "snake.h"
#include "apple.h"
#include "scaler.h"
#include "vdma.h"
#include "xil_printf.h"
#include "myColorRegister.h"
#include "sleep.h"

typedef struct {
    Snake _snake;
    Apple _apple;
    int _score;
    int _areaWidth;
    int _areaHeight;
} Game;

Position createPosition(double x, double y);

void init_game(Game* game, int area_width, int area_height);
void destroy_game(Game* game);

bool update_game(Game* game);
void set_snake_direction_game(Game* game, int direction);
int get_snake_direction_game(Game* game);
int get_snake_length_game(Game* game);
Position* get_snake_body_game(Game* game);
Position get_apple_position_game(Game* game);
int get_score_game(Game* game);
bool check_eats_apple_game(Game* game);
bool check_win_game(Game* game);
bool check_game_over_game(Game* game);
void place_apple_game(Game* game);
void init_border();
char* to_binairy_border(int nombre);


#endif
