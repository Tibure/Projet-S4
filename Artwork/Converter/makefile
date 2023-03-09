OBJS	= BitmapToColorCode.o
SOURCE	= BitmapToColorCode.cpp
HEADER	= bitmap_image.hpp
OUT		= bitmapConverter
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

BitmapToColorCode.o: BitmapToColorCode.cpp
	$(CC) $(FLAGS) BitmapToColorCode.cpp 


clean:
	rm -f $(OBJS) $(OUT)