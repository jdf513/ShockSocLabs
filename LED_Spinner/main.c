#include  <msp430.h>
#include <stdint.h>
#include <stdlib.h>

#define IMAGE_LENGTH 	(36)
#define TIMEOUT 		(10000)
#define NUMBER_OF_IMAGES (2)

static volatile int mode = 0;

static volatile int timeout = TIMEOUT;

static uint8_t const * volatile current_image;
static int volatile current_image_length;
		
// Smiley face
static uint8_t const image2[] = 
	{0x20, 0x67, 0xC7, 0xC0, 0xC0, 0xC7, 0x67, 0x20, 0, 0, 0, 0
	};
	 
static uint8_t const image3[] = 
	{0xFF, 0x18, 0x18, 0xFF, 0, 0,		// H
	 0x81, 0xFF, 0xFF, 0x81, 0, 0,		// I
	 0, 0, 0, 0, 0, 0,					// Space
	 0, 0, 0, 0, 0, 0
	};
	
static uint8_t const *images[] = {image2, image3};
static int image_lengths[] = {12, 18};


int main(void)
{
    WDTCTL = WDTPW + WDTHOLD; // Disable watchdog
    
    P1OUT = 0x00; // Reset all outputs
    P1DIR = 0xFF; // ALL P1 to outputs
    
	CCTL0 = CCIE;	// Timer interrupt enabled
	TACTL = TASSEL_2 + MC_1 + ID_3;	// SMCLK/8, upmode  
	CCR0 =  10000;	// 12.5 Hz   
    
    P2DIR = ~BIT5;	// Set all to outputs except button pin
    P2OUT |= BIT5; 	// Select pull-up resistor
    P2REN |= BIT5;	// Enable the pullup resistor
    
    P2IE |= BIT5; 	// Enable button interrupt
    P2IES |= BIT5;	// Interrupt on falling edge

	P2IFG |= BIT5;	// Execute interrupt to start first image
    
    _BIS_SR(GIE); // Go into super normal mode
    
    while (1) // Loop forever
    {
		/* Loop over each column of pixels in the image */
		for (int i = 0; i < current_image_length; i++) 
		{
			/* Loop several times for each pixel to give the pixels 
			 * a suitable length */
			for (int k = 0; k < 0xF; k++) 
			{
				/* loop over every pixel in the image, displaying 
				 * it */
				for (uint8_t j = 0x1; j != 0; j <<= 1)
				{
					P1OUT = ~(j & current_image[i]);
				}
			}
		}
			
		/* Decrement timeout and check to see if it's elapsed */
		timeout--;
		if (timeout == 0)
		{
			/* Turn outputs off (high, since they're active low) */
			P1OUT = 0xFF;
			/* Enter low power mode */
			_BIS_SR(LPM4_bits | GIE);
		}
	}
	
	return 0;
}


// Port 2 interrupt service routine
#pragma vector=PORT2_VECTOR
__interrupt void Port_2(void)
{
	P1OUT = 0xFF; // Turn all LEDs off
	timeout = TIMEOUT; // Reset timeout
	mode = (mode + 1) % (NUMBER_OF_IMAGES + 1); // Scroll through mode
	
	if (mode == 0)
	{
		// Go into low power mode with interrupts
		__bis_SR_register_on_exit(LPM4_bits | GIE);
		
	}
	else
	{
		// wake up from low power mode
		__bic_SR_register_on_exit(LPM4_bits); 
		current_image = images[mode - 1];
		current_image_length = image_lengths[mode - 1];
	}
	
	while(!(P2IN & BIT5)); // Wait until button is released
	for (volatile int x = 0; x < 0xFFF; x++); // Crude loop, works as a debouncer
	
	P2IFG &= ~BIT5;	// Clear button interrupt
}
