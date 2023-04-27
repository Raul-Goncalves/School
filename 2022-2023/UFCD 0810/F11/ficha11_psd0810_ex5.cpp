#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

struct Agenda{
	char nome[30], celular[13];
	
} agda;

main(){
	
	FILE *a;
	int n,ordem;
	
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex4_agenda.DAT","rb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro");
	exit(1);
	}
	
	for(int i=0;i<5;i++){
		fread(&agda,sizeof(agda),1,a);
		printf("Nome: %s\tCelular: %s\n",agda.nome,agda.celular);
	}
	fclose(a);
	
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex4_agenda.DAT","rb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n","ficha11_ex4_agenda.DAT");
	exit(1);
	}

	while(1){
		printf("Nome: ");gets(agda.nome);
		if(strcmp(agda.nome,0)==0)
		break;
		printf("Celular: ");gets(agda.celular);
		fwrite(&agda,sizeof(agda),1,a);
	}
	fclose(a);
	
}
