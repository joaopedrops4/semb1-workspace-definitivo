CC = arm-none-eabi-gcc
CFLAGS = -g -mcpu=cortex-m4 -mthumb -O0 -Wall

all: startup.o main.o

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $^

clean:
	rm -f *.o	