To compile and flash the code, install msp430-gcc and mspdebug. Then run

	msp430-gcc main.c -o main.elf -mmcu=msp430g2553 -O2 -Wall -g
	mspdebug rf2500 "prog main.elf"

changing the msp430g2553 to the necessary processor.
