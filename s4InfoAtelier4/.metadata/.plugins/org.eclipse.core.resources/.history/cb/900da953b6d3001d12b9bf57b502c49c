#include "apple.h"
#include <stdlib.h>

Apple init_apple() {
    Apple apple;
    apple.position.x = 0;
    apple.position.y = 0;
    return apple;
}


char* to_binary_A(double nombre) {	
    char* binaire = (char *) malloc(BITS + 1);
    double resultat_arrondi = round(nombre * 16);
    if (resultat_arrondi < 0.0 || resultat_arrondi > 1023.0) {
        printf("Erreur : la valeur doit être comprise entre 0 et 64.\n");
        exit(1);
    } else {
        // Conversion en binaire sur 10 bits
        uint16_t entier = (uint16_t) resultat_arrondi;
        for (int i = BITS - 1; i >= 0; i--) {
            binaire[i] = '0' + (entier & 1);
            entier >>= 1; // Décalage à droite de 1 bit
        }
    }
    binaire[BITS] = '\0'; // On ajoute le caractère de fin de chaîne

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
        char rot[2] = "00";


    //Actor ID
    char actorID[4] = "0100";


    //position x
    char* posX= to_binary_A(apple->position.x);

    //position y
    char* posY= to_binary_A(apple->position.x);

	
	strcat(posX,posY);
	strcat(posX,rot);
	strcat(posX,actorID);
	
	int data = strtol(posX,NULL,2);
	return data;
	

	
	




    


}


