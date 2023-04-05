#include "scaler.h"
#include "vdma.h"
#include "xil_printf.h"
#include "myColorRegister.h"
#include "sleep.h"
#include "Game.h"


int main()
{
    int areaWidth = 64;
    int areaHeight = 64;

    // Initialize the game
    Game game;
    init_game(&game, areaWidth, areaHeight);
	configureScaler();
    configureVdma();

    int colorA = 0xFF;
    int colorC = 0xFF0000;
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 4, colorC);

    // Set the initial direction of the snake
    set_snake_direction_game(&game, 0);

    // Run the game loop
    while (1) {
        // Update the game state
        bool gameIsOver = !update_game(&game);
        system("clear");
        MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, colorA );
        for (int y = 0; y < areaHeight; y++) {
                   for (int x = 0; x < areaWidth; x++) {
                       if (check_snake_collision(&game._snake, createPosition(x, y), true)) {
                    	   xil_printf("O");
                       } else if (get_apple_position_game(&game).x == x && get_apple_position_game(&game).y == y) {
                    	   xil_printf("A");
                       } else {
                    	   xil_printf(".");
                       }
                   }
                   xil_printf("\n");
               }

         sleep(1);

         if (gameIsOver) {
        	 xil_printf("Game over!\n");
                    break;
                }

    }


    return 0;
}
