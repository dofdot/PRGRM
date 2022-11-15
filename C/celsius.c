#include <stdio.h>

int main()
{
    float celsius, fahr;
    float lower, upper, step;

    lower = 0;
    upper = 200;
    step = 20;

    fahr = lower;
    while (fahr <= upper) {
        celsius = 5 * (fahr - 32) / 9;
        printf("%4.1f\t %4.1f\n", fahr, celsius);
        fahr += step;
    }
    printf("This is with a WHILE LOOP\n");

    for (fahr = 0; fahr <= 200; fahr = fahr + 20)
        printf("%3f\t %3f\n", fahr, 5 * (fahr - 32) / 9);
}

