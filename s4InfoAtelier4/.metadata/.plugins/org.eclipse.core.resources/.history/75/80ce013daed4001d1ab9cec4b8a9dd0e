#include "snake.h"
#include <stdio.h>
#include <math.h>
#include "xil_printf.h"
#define BITS 10

Snake init_snake(Position position) {
    Snake snake;
    snake._length = 2;
    snake._direction = 2;
    snake._body[0].x = position.x;
    snake._body[0].y = position.y;
    move_snake(&snake);
    return snake;
}

double my_round_S(double x) {
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


char* to_binary_S(double nombre) {	
    char* binaire = (char *) malloc(BITS + 1);
    double resultat_arrondi = my_round_S(nombre * 16);
    if (resultat_arrondi < 0.0 || resultat_arrondi > 1023.0) {
        //printf("Erreur : la valeur doit être comprise entre 0 et 64.\n");
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


void move_snake(Snake* snake) {

    for (int i = snake->_length - 1; i > 0; i--) {
        snake->_body[i].x = snake->_body[i - 1].x;
        snake->_body[i].y = snake->_body[i - 1].y;
    }
    int datePixelX = (int) (snake->_body[0].x * 16);
    int datePixelY = (int) (snake->_body[0].y * 16);
    //double newPos = 0.0;
    //double offset = 1.0/16.0;

    switch (snake->_direction) {
        case 0:
        	//newPos = snake->_body[0].y -offset;
        	//xil_printf("Offset: %d,%d\tOldPosY: %d,%d\tNewPosY: %d,%d\n", (int)offset, (int)((offset-(int)offset)*1000000),(int)snake->_body[0].y, (int)((snake->_body[0].y-(int)snake->_body[0].y)*1000000), (int)newPos, (int)((newPos-(int)newPos)*1000000));
            snake->_body[0].y = snake->_body[0].y - 0.0625 ;
            xil_printf("POS X: %d  , POSY: %d \n ",datePixelX, datePixelY );

            break;
        case 1:
            snake->_body[0].x = snake->_body[0].x + 0.0625;
            xil_printf("POS X: %d  , POSY: %d \n ",datePixelX, datePixelY );
            break;
        case 2:
            snake->_body[0].y = snake->_body[0].y + 0.0625;
            xil_printf("POS X: %d  , POSY: %d \n ",datePixelX, datePixelY );
            break;
        case 3:
            snake->_body[0].x = snake->_body[0].x - 0.0625;
            xil_printf("POS X: %d  , POSY: %d \n ",datePixelX, datePixelY );
            break;
    }
}

void grow_snake(Snake* snake) {
    // TODO: Implement
}

void set_snake_direction(Snake* snake, int direction) {
    snake->_direction = direction;
}

int get_snake_direction(Snake* snake) {
    return snake->_direction;
}

int get_snake_length(Snake* snake) {
    return snake->_length;
}

Position* get_snake_body(Snake* snake) {
    return snake->_body;
}


bool check_snake_collision(Snake* snake, Position position, bool ignoreHead) {
    int i;
    for (i = ignoreHead ? 1 : 0; i < snake->_length; i++) {
        if (snake->_body[i].x == position.x && snake->_body[i].y == position.y) {
            return true;
        }
    }
    return false;
}

int get_snake_data(Snake* snake,int body_part){

        //rotation
        char rot[3] = "";
        switch (snake->_direction) {
        case 0:
            strcpy(rot, "00"); 
            break;
        case 1:
            strcpy(rot, "01"); 
            break;
        case 2:
            strcpy(rot, "10"); 
            break;
        case 3:
            strcpy(rot, "11"); 
            break;
    }

    //Actor ID
    char tuileID[5] = "";
    if (body_part == 0) {
		strcpy(tuileID,"1000");//tete
        

    }
    else if(body_part != (sizeof(snake->_body)/sizeof(snake->_body[0]))-1){
		strcpy(tuileID,"0101");//corps normal
        

    }
    else{
		strcpy(tuileID,"0111");//queue
        
    }

    char opcode[33]="01";


    char* acteurID = to_binary_3bits(body_part);


    char visibility[2] = "";
    if(body_part >  snake->_length ) {
    	strcpy(visibility, "0");
    }
    else{
    	strcpy(visibility, "1");
    }

    char* posX= to_binary_S(snake->_body[body_part].x);
    //position y
    char* posY= to_binary_S(snake->_body[body_part].y);

	
    strcat(opcode,posX);
	strcat(opcode,posY);
	strcat(opcode,tuileID);
	strcat(opcode,rot);
	strcat(opcode,visibility);
	strcat(opcode,acteurID);
	xil_printf("chaine: %s \n",opcode);
	int data = strtol(opcode,NULL,2);
	return data;

}


char* to_binary_3bits(int nombre){
    char* binaire = (char *) malloc(3 + 1);
    
    if (nombre >7 ) {
        //printf("Erreur : la valeur doit être comprise entre 0 et 7.\n");
        exit(1);
    } else {
        // Conversion en binaire sur 10 bits

        for (int i = 3 - 1; i >= 0; i--) {
            binaire[i] = '0' + (nombre & 1);
            nombre >>= 1; // Décalage à droite de 1 bit
        }
    }
    binaire[3] = '\0'; // On ajoute le caractère de fin de chaîne

    return binaire;

}
