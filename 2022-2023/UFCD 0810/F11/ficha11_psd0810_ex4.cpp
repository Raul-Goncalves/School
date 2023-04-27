#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

struct Agenda{
	char nome[30], celular[13];
	
} agda;

main(){
	
	FILE *a;
	int n,ordem;float x;
	
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex3_agenda.DAT","wb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n”,”dados.dat");
	exit(1);
	}
	
	for(int i=0;i<5;i++){
	puts("Nome: ");gets(agda.nome);
	puts("Telefone: ");gets(agda.celular);
	if(fwrite(&agda,sizeof(agda),1,a)==0)
	  fprintf (stderr, "Não foi gravado com sucesso o registo no ficheiro!!!\n",n); 
	}
	fclose(a);
	
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex3_agenda.DAT","rb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n”,”dados.dat");
	exit(1);
	}
	
	puts("Registos do ficheiro");
	while(fread(&agda,sizeof(agda),1,a)!=0){
	printf("nome: %s\ttelefone: %s\n",agda.nome,agda.celular);
	}
	fclose(a);
}
