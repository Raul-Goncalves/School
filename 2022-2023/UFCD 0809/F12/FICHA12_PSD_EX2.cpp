#include<stdio.h>

main(){
	char RAUL[10];
	int F=0;
	printf("Bota um caracteres: ");
	gets(RAUL);
		for(int T=0;RAUL[T]!='\0';T++){
			F++;
		}
	printf("Numero de caracteres: %d", F);
}
