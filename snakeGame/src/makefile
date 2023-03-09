OBJS	= main.o Apple.o Game.o Snake.o
SOURCE	= main.cpp Apple.cpp Game.cpp Snake.cpp
HEADER	= Apple.h Directions.h Game.h Position.h Snake.h
OUT	= snake.out
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

main.o: main.cpp
	$(CC) $(FLAGS) main.cpp 

Apple.o: Apple.cpp
	$(CC) $(FLAGS) Apple.cpp 

Game.o: Game.cpp
	$(CC) $(FLAGS) Game.cpp 

Snake.o: Snake.cpp
	$(CC) $(FLAGS) Snake.cpp 


clean:
	rm -f $(OBJS) $(OUT)