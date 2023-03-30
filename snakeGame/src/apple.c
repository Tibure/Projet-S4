#include "apple.h"
#include <stdlib.h>

Apple init_apple() {
    Apple apple;
    apple.position.x = 0;
    apple.position.y = 0;
    return apple;
}

void destroy_apple(Apple* apple) {
    free(apple);
}

void set_apple_position(Apple* apple, Position position) {
    apple->position = position;
}

Position get_apple_position(Apple* apple) {
    return apple->position;
}
