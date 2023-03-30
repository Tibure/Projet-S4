#include "snake.h"

Snake init_snake(Position position) {
    Snake snake;
    snake._length = 2;
    snake._direction = UP;
    snake._body[0].x = position.x;
    snake._body[0].y = position.y;
    move_snake(&snake);
}

void move_snake(Snake* snake) {
    int i;
    for (i = snake->_length - 1; i > 0; i--) {
        snake->_body[i].x = snake->_body[i - 1].x;
        snake->_body[i].y = snake->_body[i - 1].y;
    }
    switch (snake->_direction) {
        case DOWN:
            snake->_body[0].y--;
            break;
        case RIGHT:
            snake->_body[0].x++;
            break;
        case UP:
            snake->_body[0].y++;
            break;
        case LEFT:
            snake->_body[0].x--;
            break;
    }
}

void grow_snake(Snake* snake) {
    // TODO: Implement
}

void set_snake_direction(Snake* snake, int direction) {
    snake->_direction = direction;
}

int get_snake_direction(Snake* snake) {
    return snake->_direction;
}

int get_snake_length(Snake* snake) {
    return snake->_length;
}

Position* get_snake_body(Snake* snake) {
    return snake->_body;
}

bool check_snake_collision(Snake* snake, Position position, bool ignoreHead) {
    int i;
    for (i = ignoreHead ? 1 : 0; i < snake->_length; i++) {
        if (snake->_body[i].x == position.x && snake->_body[i].y == position.y) {
            return true;
        }
    }
    return false;
}
