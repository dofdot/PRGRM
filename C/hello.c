#include <stdio.h>

int main(void)
{
    //Hello world PRINT
    printf("Hello, World\n");

    //Declare Variable INT,FLOAT, STRING types.
    int i = 2;
    float f = 3.14;
    char *s = "hello, world!";

    // Printing VARIABLES.
    printf("%s\n", s);
    printf("i = %i and f = %f\n", i, f);
    
    //BOOLEAN TRUE OR FALSE
    int x = 1;
    if (x) {
        printf("x is true\n");
    }

    //Operators and Expressions
    i += 3;
    i *= 9; 
    printf("%i\n", i);
    
    //TERNARY Operator
    int y = 3;
    y += x > 10? 10: 20;
    printf("%c\n", y);
}


