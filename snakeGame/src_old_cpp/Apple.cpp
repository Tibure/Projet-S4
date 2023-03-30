#include "Apple.h"

Apple::Apple()
{
    _position.x = 0;
    _position.y = 0;
}

Apple::Apple(Position position)
{
    _position.x = position.x;
    _position.y = position.y;
}

Apple::~Apple()
{
}

void Apple::setPosition(Position position)
{
    _position.x = position.x;
    _position.y = position.y;
}

Position Apple::getPosition()
{
    return _position;
}