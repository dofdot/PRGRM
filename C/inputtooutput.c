#include <stdio.h>
#define NONBLANK '-'
/* This program will copy its input to its output replacing each string with one
 * or more blanks into a single blank */

int main(void){
	int c, lastc;
    lastc = NONBLANK;

    while ((c = getchar()) != EOF){
        if (c == ' '){
            if (lastc != ' ')
            putchar(c);
        }
        else {
           putchar(c);
           lastc = c; 
        }
    }
}
