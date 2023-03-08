#include "Game.h"
#include <stdlib.h>

Game::Game(int areaWidth, int areaHeight)
{
    _snake = Snake(Position(areaWidth/2, areaHeight/2));
    placeApple();
    _score = 0;
    _areaWidth = areaWidth;
    _areaHeight = areaHeight;
}

Game::~Game()
{
}

bool Game::update()
{
    if (checkGameOver()) return false;

    _snake.move();

    if (checkEatsApple()) {
        _snake.grow();
        _score++;
        placeApple();
    }
    return true;
}

void Game::setSnakeDirection(int direction)
{
    _snake.setDirection(direction);
}

int Game::getSnakeDirection()
{
    return _snake.getDirection();
}

int Game::getSnakeLength()
{
    return _snake.getLength();
}

Position* Game::getSnakeBody()
{
    return _snake.getBody();
}

Position Game::getApplePosition()
{
    return _apple.getPosition();
}

int Game::getScore()
{
    return _score;
}

bool Game::checkEatsApple()
{
    return _snake.checkCollision(_apple.getPosition());
}

bool Game::checkWin()
{
    return _snake.getLength() == _areaWidth * _areaHeight;
}

bool Game::checkGameOver()
{
    return _snake.checkCollision(_snake.getBody()[0], true) || _snake.getBody()[0].x < 0 || _snake.getBody()[0].x >= _areaWidth || _snake.getBody()[0].y < 0 || _snake.getBody()[0].y >= _areaHeight || checkWin();
}

void Game::placeApple()
{
    do {
        _apple.setPosition(Position(rand() % _areaWidth, rand() % _areaHeight));
    } while (_snake.checkCollision(_apple.getPosition()));
}