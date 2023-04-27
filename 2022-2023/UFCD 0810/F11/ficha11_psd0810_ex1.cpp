#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *fp;
	char s[15];
	fp=fopen("C:/Users/Utilizador/Documents/raulzao/textoficha11ex1.txt", "wb");
	int ch;
	
	if(fp==NULL){
		printf("Impóssivel abrir o ficheiro %s\n", s);
		exit(1);
	}
	
	puts("Bota uma String: ");
	gets(s);
	ch=fwrite(s,sizeof(char),strlen(s),fp);
	printf("O numero que você botou é: %c", s);
}
