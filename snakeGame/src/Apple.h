#ifndef __APPLE_H__
#define __APPLE_H__

#include "Position.h"

class Apple
{
private:
    Position _position;

public:
    Apple();
    Apple(Position position);
    ~Apple();

    void setPosition(Position position);
    Position getPosition();

};


#endif