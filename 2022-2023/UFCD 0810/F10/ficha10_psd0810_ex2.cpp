#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *fp;
	char s[21],c[21];
	
	printf("Bota o nome do ficheiro:\n");
	scanf("%s", &c);
	fp=fopen(c,"w");
	
	if(fp==NULL){
		printf("Ficheiro não foi aberto\n");
		exit(1);
	}
	
	for(int num=0;num<10;num++)
	fputs("Ola\n", fp);
	fclose(fp);
	
}
