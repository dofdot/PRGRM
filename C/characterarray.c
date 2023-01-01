#include <stdio.h>
#define MAXLINE 100

int getlineto(char S[], int lim);
void copyto(char to[], char from[]);

int main(){
	int len;
	int max;
	char line[MAXLINE];
	char longest[MAXLINE];

	max = 0;
	while ((len = getlineto(line, MAXLINE)) > 0)
		if (len > max) {
			max = len;
			copyto(longest, line);
		}
	if (max > 0)
		printf("%s", longest);
	return 0;
}

int getlineto(char s[], int lim){
	int c, i;
	for (i = 0; i < lim -1 && (c = getchar()) != EOF && c != '\n'; ++i)	
			s[i] = c;
	if (c == '\n'){
			s[i] = c;
			++i;
	}
	s[i] = '\0';
	return i;
}

void copyto(char to[], char from[]){
	int i;
	i = 0;
	while ((to[i] = from[i]) != '\0')
		++i;
}




