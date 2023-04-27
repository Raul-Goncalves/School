#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *fp;
	char s[] = "C:/Users/Utilizador/Documents/raulzao/textoficha10ex1.txt";
	int ch;
	
	fp = fopen(s,"w");
	if(fp==NULL){
		printf("Impóssivel abrir o ficheiro %s\n", s);
		exit(1);
	}
	do
	{
		ch=getchar();
		fputc(ch, fp);
	}while(ch!='\n');
	fclose(fp);
	fp=fopen(s,"r");
	printf("Contéudo do ficheiro %s\n", s);
	while((ch=fgetc(fp))!=EOF)
		putchar(toupper(ch));
	fclose(fp);
}
