#include <stdio.h>

int convert(int fahr);

int main(){
	printf("%d\n", convert(0));
	return 0;
}

int convert(int fahr){
	int c;
	c = 5 * (fahr - 32) /9;
	return c;
}
