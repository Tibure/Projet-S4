#include "game.h"
#include <stdlib.h>
#include <string.h>
#include "xil_printf.h"
#include <sleep.h>

Position createPosition(double x, double y) {
    Position position;
    position.x = x;
    position.y = y;
    return position;
}

void init_game(Game* game, int areaWidth, int areaHeight) {

	double areaW = (double)areaWidth;
	double areaH = (double)areaHeight;
    game->_snake = init_snake(createPosition(areaW/2, areaH/2));
    game->_score = 0;
    game->_areaWidth = areaWidth;
    game->_areaHeight = areaHeight;
    init_border();
    game->_apple = init_apple();

    place_apple_game(game);
//    int appleData232 = get_apple_data(&game->_apple);
//    xil_printf("breakpoint 3  \n");
//    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, appleData232 );
//    xil_printf("breakpoint 4 \n");

}

bool update_game(Game* game) {
	xil_printf("breakpoint 4.5 \n");
    if (check_game_over_game(game)) return false;
    xil_printf("breakpoint 5 \n");
    move_snake(&game->_snake);


    for( int i =0 ; i<2; i++){
    int dataSnake = get_snake_data(&game->_snake,0);
    MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, dataSnake );
    xil_printf("Data: %d \n",dataSnake);

    
}
    //FONCTION VITIS pour envoter data a utiliser avec dataSnake ici

    if (check_eats_apple_game(game)) {
        grow_snake(&game->_snake);
        game->_score++;
        int newtile = set_tile(&game->_apple);
        //MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, newtile );
        place_apple_game(game);
        int appleData = get_apple_data(&game->_apple);
        //MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, appleData );
        //SEND_DATA(appleData);
    }
    return true;
}

void set_snake_direction_game(Game* game, int direction) {
    set_snake_direction(&game->_snake, direction);
}

int get_snake_direction_game(Game* game) {
    return get_snake_direction(&game->_snake);
}

int get_snake_length_game(Game* game) {
    return get_snake_length(&game->_snake);
}

Position* get_snake_body_game(Game* game) {
    return get_snake_body(&game->_snake);
}

Position get_apple_position_game(Game* game) {
    return get_apple_position(&game->_apple);
}

int get_score_game(Game* game) {
    return game->_score;
}

bool check_eats_apple_game(Game* game) {
    return check_snake_collision(&game->_snake, get_apple_position(&game->_apple), false);
}

bool check_win_game(Game* game) {
    return get_snake_length_game(game) == game->_areaWidth * game->_areaHeight;
}

bool check_game_over_game(Game* game) {
   // return check_snake_collision(&game->_snake, get_snake_body_game(game)[0], true) ||
          return get_snake_body_game(game)[0].x < 0 ||
           get_snake_body_game(game)[0].x >= game->_areaWidth || 
           get_snake_body_game(game)[0].y < 0 || 
           get_snake_body_game(game)[0].y >= game->_areaHeight || 
           check_win_game(game);
}
unsigned int custom_rand(unsigned int seed) {
    // Linear Congruential Generator algorithm
    seed = (seed * 83467 + 12345);
    return seed;
}
void place_apple_game(Game* game) {
    int i = 0;
    do {
        //set_apple_position(&game->_apple, createPosition(custom_rand(i) % game->_areaWidth, custom_rand(i) % game->_areaHeight));
    	set_apple_position(&game->_apple, createPosition(5,5));
        i++;
    } while (check_snake_collision(&game->_snake, get_apple_position(&game->_apple), false));
}


char* to_binary_border(double nombre) {
    char* binaire = (char *) malloc(BITS + 1);

    if (nombre > 63 ) {
        //printf("Erreur : la valeur doit être comprise entre 0 et 64.\n");
        exit(1);
    } else {
        // Conversion en binaire sur 10 bits
        uint16_t entier = (uint16_t) nombre;
        for (int i = 6 - 1; i >= 0; i--) {
            binaire[i] = '0' + (entier & 1);
            entier >>= 1; // Décalage à droite de 1 bit
        }
    }
    binaire[6] = '\0'; // On ajoute le caractère de fin de chaîne

    return binaire;
}

//background 40 en x 24 en y
void init_border(){
	//border vertical gauche
	for(int i=0; i< 23; i++){
		char pad[15] = "00000000000000";
		char opcode[33] = "00";
		char rot[3] ="10";
		char tileID[5] = "0010";
		char posX[7]= "000000";
		char* posY = to_binary_border(i);


		strcat(opcode,posX);
		strcat(opcode,posY);
		strcat(opcode,tileID);
		strcat(opcode,rot);
		strcat(opcode,pad);
		usleep(500);

		//SEND_DATA(strtol(opcode,NULL,2));
		MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol(opcode,NULL,2));
		}

	//border horizontal haut
	for(int i=0; i< 39; i++){
		char pad[15] = "00000000000000";
		char opcode[33] = "00";
		char rot[3] ="01";
		char tileID[5] = "0010";
		char* posX= to_binary_border(i);
		char posY[7] = "000000";


		strcat(opcode,posX);
		strcat(opcode,posY);
		strcat(opcode,tileID);
		strcat(opcode,rot);
		strcat(opcode,pad);
		usleep(500);

		//SEND_DATA(strtol(opcode,NULL,2));
		MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol(opcode,NULL,2) );
		}


	//border horizontal bas
	for(int i=0; i< 39; i++){
		char pad[15] = "00000000000000";
		char opcode[33] = "00";
		char rot[3] ="11";
		char tileID[5] = "0010";
		char* posX= to_binary_border(i);
		char posY[7] = "010111";


		strcat(opcode,posX);
		strcat(opcode,posY);
		strcat(opcode,tileID);
		strcat(opcode,rot);
		strcat(opcode,pad);
		usleep(500);

		MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol(opcode,NULL,2) );
		//SEND_DATA(strtol(opcode,NULL,2));
		}

	//VERTICAL DROIT
	for(int i=0; i< 23; i++){
		char pad[15] = "00000000000000";
		char opcode[33] = "00";
		char rot[3] ="00";
		char tileID[5] = "0010";
		char posX[7]= "100111";
		char* posY = to_binary_border(i);


		strcat(opcode,posX);
		strcat(opcode,posY);
		strcat(opcode,tileID);
		strcat(opcode,rot);
		strcat(opcode,pad);
		usleep(500);
		MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol(opcode,NULL,2) );
		//SEND_DATA(strtol(opcode,NULL,2));
		}

	//coin (0,0)
	MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol("0000000000000000010100000000000000",NULL,2) );

	MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol("0000000001011100011000000000000000",NULL,2) );

	MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol("0010011100000000011100000000000000",NULL,2) );

	MYCOLORREGISTER_mWriteReg(XPAR_MYCOLORREGISTER_0_S00_AXI_BASEADDR, 0, strtol("0010011101011100010000000000000000",NULL,2) );

}