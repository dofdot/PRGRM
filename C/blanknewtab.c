#include <stdio.h>

int main(){
		int c, nl, tb, blnk;
		nl = 0;
		tb = 0;
		blnk = 0;
				while ((c = getchar()) != EOF)
						if ( c == '\n' ){
							++nl;
						}
						else if ( c == ' ' ){
							++blnk;
						}
						else if ( c == '\t' ){
							++tb;
						}
		printf("%d\n%d\n%d", nl, blnk, tb);
}
		
				
