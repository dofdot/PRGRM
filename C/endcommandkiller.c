#include <stdio.h>
#define END 1

int main(void){
	int c;
	while ((c = getchar()) != EOF){
		putchar(c);
		if ((c = getchar()) = END){
			printf("%d\n", c);
			EOF;
		}
	}
}
