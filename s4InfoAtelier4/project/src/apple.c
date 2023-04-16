#include "Apple.h"
#include <stdlib.h>
#include "myColorRegister.h"


int cptAppleOrange = 0;

Apple init_apple() {
    Apple apple;
    apple.position.x = 0;
    apple.position.y = 0;

    return apple;
}

double my_round_A(double x) {
    double floor_val, ceil_val;

    if (x >= 0.0) {
        floor_val = (double)((long)x);
        ceil_val = floor_val + 1.0;
    } else {
        ceil_val = (double)((long)x);
        floor_val = ceil_val - 1.0;
    }

    if ((x - floor_val) < (ceil_val - x)) {
        return floor_val;
    } else {
        return ceil_val;
    }
}

char* to_binary_A(double nombre) {	
    char* binaire = (char *) malloc(BITS + 1);

    if (nombre > 64 ) {
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

void destroy_apple(Apple* apple) {
    free(apple);
}

void set_apple_position(Apple* apple, Position position) {
    apple->position = position;
}

Position get_apple_position(Apple* apple) {
    return apple->position;
}



int get_apple_data(Apple* apple){

     //rotation
     char opcode[19] = "00";
     char rot[3] = "00";
     char pad[15]= "00000000000000";

     	 xil_printf("breakpoint \n");
    	 char tuileID[5] = "0100"; //apple




    //position x
    char* posX= to_binary_A(apple->position.x);

    //position y
    char* posY= to_binary_A(apple->position.x);

	
	strcat(opcode,posX);
	strcat(opcode,posY);
	strcat(opcode,tuileID);
	strcat(opcode,rot);
	strcat(opcode,pad);
	
	int data = strtol(posX,NULL,2);
	xil_printf("breakpoint2 :) \n");
	return data;
	


}

int set_tile(Apple* apple){

    //rotation
    char opcode[33] = "00";
    char rot[3] = "00";
    char pad[15] = "00000000000000";
    xil_printf("breakpoint set \n");

    char tuileID[5] = "0000";

   //position x
   char* posX= to_binary_A(apple->position.x);

   //position y
   char* posY= to_binary_A(apple->position.x);


	strcat(opcode,posX);
	strcat(opcode,posY);
	strcat(opcode,tuileID);
	strcat(opcode,rot);
	strcat(opcode,pad);

	int data = strtol(posX,NULL,2);

	return data;
}

