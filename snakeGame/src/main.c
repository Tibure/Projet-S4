#include <stdio.h>
#include <stdlib.h>
#include "game.h"

int main() {
    // Define the dimensions of the game area
    int areaWidth = 20;
    int areaHeight = 20;

    // Initialize the game
    Game game;
    init_game(&game, areaWidth, areaHeight);

    // Set the initial direction of the snake
    set_snake_direction_game(&game, 0);

    // Run the game loop
    while (true) {
        // Update the game state
        bool gameIsOver = !update_game(&game);

        // Clear the console
        system("clear");

        // Print the game area
        for (int y = 0; y < areaHeight; y++) {
            for (int x = 0; x < areaWidth; x++) {
                if (check_snake_collision(&game._snake, createPosition(x, y), true)) {
                    printf("O");
                } else if (get_apple_position_game(&game).x == x && get_apple_position_game(&game).y == y) {
                    printf("A");
                } else {
                    printf(".");
                }
            }
            printf("\n");
        }

        // Print the score
        printf("Score: %d\n", get_score_game(&game));

        // Check if the game is over
        if (gameIsOver) {
            printf("Game over!\n");
            break;
        }

        // Wait for a short period of time before updating the game again
        //usleep(100000);
    }

    return 0;
}
