#include <stdio.h>

#define BASE_UART 0xBF000900

void ac_exit(void){
	asm("break");
	return;
}

void myputc(char c)
{
	int *p = (int *) BASE_UART;
	*p = (int) c;
}

void myputs(char *s)
{
	while (*s)
		myputc(*s++);
}

int main(void)
{
   myputs("Hello");
   ac_exit();    
}