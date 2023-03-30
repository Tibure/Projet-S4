#ifndef __GAME_H__
#define __GAME_H__

#include "Snake.h"
#include "Apple.h"

class Game
{
private:
    Snake _snake;
    Apple _apple;
    int _score;

    int _areaWidth;
    int _areaHeight;

public:
    Game(int areaWidth, int areaHeight);
    ~Game();

    bool update();

    void setSnakeDirection(int direction);
    int getSnakeDirection();
    int getSnakeLength();
    Position* getSnakeBody();

    Position getApplePosition();

    int getScore();

    bool checkEatsApple();
    bool checkWin();
    bool checkGameOver();

    void placeApple();

};



#endif