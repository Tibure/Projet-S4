#ifndef __POSITION_H__
#define __POSITION_H__

struct Position
{
    int x;
    int y;
    Position() : x(0), y(0) {}
    Position(int x, int y) : x(x), y(y) {}
};

#endif