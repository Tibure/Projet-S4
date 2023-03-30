#ifndef APPLE_H
#define APPLE_H

#include "snake.h"

typedef struct {
    Position position;
} Apple;

Apple init_apple();
void destroy_apple(Apple* apple);
Position get_apple_position(Apple* apple);
void set_apple_position(Apple* apple, Position position);

#endif