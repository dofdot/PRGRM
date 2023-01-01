#include <stdio.h>

int addtwo(int a, int b);

int main(){

	printf("ADDED numbers:\n %d\n", addtwo(1, 2));

}

int addtwo(int a, int b){
	int c;
	c = a + b;
	return c;
}


