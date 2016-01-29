CC=msp430
CFLAGS=-O2 -Wall -g -mmcu=msp430g2202 -std=gnu99

OBJS=main.o


all: $(OBJS)
	$(CC)-gcc $(CFLAGS) -o main.elf $(OBJS)

%.o: %.c
	$(CC)-gcc $(CFLAGS) -c $<

clean:
	rm -fr main.elf $(OBJS)
	
program: 
	mspdebug rf2500 "prog main.elf"

hex: 
	$(CC)-objcopy -O ihex main.elf main.hex
