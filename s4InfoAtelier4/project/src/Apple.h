#ifndef APPLE_H
#define APPLE_H
#include <stdlib.h>
#include <string.h>
#include "snake.h"
#define BITS 10
typedef struct {
    Position position;
} Apple;

Apple init_apple();
double my_round_A(double x);
void destroy_apple(Apple* apple);
Position get_apple_position(Apple* apple);
void set_apple_position(Apple* apple, Position position);
char* to_binary_A(double nombre);
int get_apple_data(Apple* apple);
int set_tile(Apple* apple);


#endif