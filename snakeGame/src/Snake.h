#ifndef SNAKE_H
#define SNAKE_H

#include "direction.h"

#define bool int
#define true 1
#define false 0

typedef struct {
    int x;
    int y;
} Position;


typedef struct {
    Position _body[2]; // Maximum 2-tile body for now
    int _length;
    Direction _direction;
} Snake;

Snake init_snake(Position position);
void move_snake(Snake* snake);
void grow_snake(Snake* snake);
void set_snake_direction(Snake* snake, int direction);
int get_snake_direction(Snake* snake);
int get_snake_length(Snake* snake);
Position* get_snake_body(Snake* snake);
bool check_snake_collision(Snake* snake, Position position, bool ignore_head);

#endif