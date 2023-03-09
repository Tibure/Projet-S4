#include "Game.h"
#include <unistd.h>
#include <iostream>

#define AREAWIDTH 20
#define AREAHEIGHT 20


void printAtPosition(int x, int y, char c) {
    std::cout << "\033[" << y << ";" << x << "H" << c;
}


int main() {

    Game game(AREAWIDTH, AREAHEIGHT);

    // Print the area

    for (int i = 0; i < AREAWIDTH; i++) {
        printAtPosition(i, 0, '#');
        printAtPosition(i, AREAHEIGHT + 1, '#');
    }

    for (int i = 0; i < AREAHEIGHT; i++) {
        printAtPosition(0, i + 1, '#');
        printAtPosition(AREAWIDTH + 1, i + 1, '#');
    }

    while (game.update()) {

        // Print the snake
        for (int i = 0; i < game.getSnakeLength(); i++) {
            Position pos = game.getSnakeBody()[i];
            printAtPosition(pos.x + 1, pos.y + 1, 'o');
        }
        // Print the apple
        Position applePos = game.getApplePosition();
        printAtPosition(applePos.x + 1, applePos.y + 1, 'a');

        // Print the score
        std::cout << "\033[" << AREAHEIGHT + 3 << ";0H" << "Score: " << game.getScore() << std::flush;

        /*int caractere;

        std::cin >> caractere;

        std::cin.clear();
        std::cin.ignore(1000,'\n');

        if (caractere == 87) {
            game.setSnakeDirection(UP);
        } else if (caractere == 83) {
            game.setSnakeDirection(DOWN);
        } else if (caractere == 68) {
            game.setSnakeDirection(RIGHT);
        } else if (caractere == 65) {
            game.setSnakeDirection(LEFT);
        }*/


        // Print the game over message

        usleep(300000);
    }
}