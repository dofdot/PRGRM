#include <stdio.h>
/* Write a program to copy its input to its output, replacing each tab by \t,
 * each backspace by \b, and each backslash by \\. This makes tabs and backspaces
 * visible in an unambiguous way. */

int main(void){
    int c;
    
    while ((c = getchar()) != EOF){
        if (c == '\t'){
            putchar('t');
            continue;
        }

        if (c == '\b'){
            putchar('b');
            continue;
        }

        if (c == '\\'){
            putchar('l');
            continue;
        };
        
    }
    putchar(c);
    c = getchar();
}