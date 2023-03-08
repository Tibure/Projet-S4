#include "Snake.h"

Snake::Snake() {
    _length = 2;
    _direction = UP;
    _body[0].x = 300;
    _body[0].y = 300;
}

Snake::Snake(Position position) {
    _length = 2;
    _direction = UP;
    _body[0].x = position.x;
    _body[0].y = position.y;
}

void Snake::move() {
    for (int i = _length - 1; i > 0; i--) {
        _body[i].x = _body[i - 1].x;
        _body[i].y = _body[i - 1].y;
    }
    switch (_direction) {
        case DOWN:
            _body[0].y--;
            break;
        case RIGHT:
            _body[0].x++;
            break;
        case UP:
            _body[0].y++;
            break;
        case LEFT:
            _body[0].x--;
            break;
    }
}

void Snake::grow() {
    return; //TODO Faire en sorte qu'on puisse grossir
}

void Snake::setDirection(int direction) {
    _direction = direction;
}

int Snake::getDirection() {
    return _direction;
}

int Snake::getLength() {
    return _length;
}

Position* Snake::getBody() {
    return _body;
}

bool Snake::checkCollision(Position position, bool ignoreHead) {
    for (int i = ignoreHead ? 1 : 0; i < _length; i++) {
        if (_body[i].x == position.x && _body[i].y == position.y) {
            return true;
        }
    }
    return false;
}