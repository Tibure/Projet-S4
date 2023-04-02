#include "game.h"
#include <stdlib.h>

Position createPosition(int x, int y) {
    Position position;
    position.x = x;
    position.y = y;
    return position;
}

void init_game(Game* game, int areaWidth, int areaHeight) {
    game->_snake = init_snake(createPosition(areaWidth/2, areaHeight/2));
    game->_score = 0;
    game->_areaWidth = areaWidth;
    game->_areaHeight = areaHeight;

    game->_apple = init_apple();

    place_apple_game(game);
    
}

bool update_game(Game* game) {
    if (check_game_over_game(game)) return false;

    move_snake(&game->_snake);
    int cpt = sizeof(&game->_snake._body);
    for( int i =0 ; i<cpt; i++){
    int dataSnake = get_snake_data(&game->_snake,1);
    
}
    //FONCTION VITIS pour envoter data a utiliser avec dataSnake ici

    if (check_eats_apple_game(game)) {
        grow_snake(&game->_snake);
        game->_score++;
        place_apple_game(game);
    }
    return true;
}

void set_snake_direction_game(Game* game, int direction) {
    set_snake_direction(&game->_snake, direction);
}

int get_snake_direction_game(Game* game) {
    return get_snake_direction(&game->_snake);
}

int get_snake_length_game(Game* game) {
    return get_snake_length(&game->_snake);
}

Position* get_snake_body_game(Game* game) {
    return get_snake_body(&game->_snake);
}

Position get_apple_position_game(Game* game) {
    return get_apple_position(&game->_apple);
}

int get_score_game(Game* game) {
    return game->_score;
}

bool check_eats_apple_game(Game* game) {
    return check_snake_collision(&game->_snake, get_apple_position(&game->_apple), false);
}

bool check_win_game(Game* game) {
    return get_snake_length_game(game) == game->_areaWidth * game->_areaHeight;
}

bool check_game_over_game(Game* game) {
    return check_snake_collision(&game->_snake, get_snake_body_game(game)[0], true) || 
           get_snake_body_game(game)[0].x < 0 || 
           get_snake_body_game(game)[0].x >= game->_areaWidth || 
           get_snake_body_game(game)[0].y < 0 || 
           get_snake_body_game(game)[0].y >= game->_areaHeight || 
           check_win_game(game);
}
unsigned int custom_rand(unsigned int seed) {
    // Linear Congruential Generator algorithm
    seed = (seed * 83467 + 12345);
    return seed;
}
void place_apple_game(Game* game) {
    int i = 0;
    do {
        set_apple_position(&game->_apple, createPosition(custom_rand(i) % game->_areaWidth, custom_rand(i) % game->_areaHeight));
        i++;
    } while (check_snake_collision(&game->_snake, get_apple_position(&game->_apple), false));
}