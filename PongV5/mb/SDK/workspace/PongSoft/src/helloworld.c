/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 */

#include <stdio.h>
#include "platform.h"
#include "mblaze_nt_types.h"
#include "xparameters.h"
#include "xgpio.h"

void print(char *str);

int main()
{
	int i = 0;
	uint32_t *ptr_pushButtons, *ptr_LEDs;
	ptr_pushButtons = XPAR_PUSH_BUTTONS_3BIT_BASEADDR;
	ptr_LEDs = XPAR_LEDS_8BIT_BASEADDR;

    init_platform();

    print("Hello World\n\r");

    while(1){
    	// Set LEDs according to push buttons
    	*ptr_LEDs = *ptr_pushButtons;

    	// Delay
    	for (i = 0;  i < 10000; ++ i);
    }

    return 0;
}
