#ifndef __SNAKE_H__
#define __SNAKE_H__

#include "Position.h"
#include "Directions.h"

class Snake {
private:
    Position _body[2]; //Corps de 2 tuiles max pour l'instant
    int _length;
    int _direction;
public:
    Snake();
    Snake(Position position);
    void move();
    void grow();
    void setDirection(int direction);
    int getDirection();
    int getLength();
    Position* getBody();

    bool checkCollision(Position position);
}

#endif