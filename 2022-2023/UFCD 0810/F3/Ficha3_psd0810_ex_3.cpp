#include <stdio.h>
#include <string.h>
#define n 2

struct aluno{
	
	char nome[30];
	float notas[4];

}alunos[n],aux;

main(){
	float  media[n],soma=0,aux2;
	int menor;
	
	for(int i=0;i<n;i++){
		printf("Insira o Nome Do Aluno:\n");
		scanf(" %s",alunos[i].nome);
	for(int r=0;r<4;r++){
		printf("Insira A Nota %d:\n",r+1);	

		scanf("%f",&alunos[i].notas[r]);
		soma=soma + alunos[i].notas[r];
	}
		media[i]=soma/4;
	}
	for(int i=0;i<n-1;i++){
		menor=i;
	for(int r=i+1;r<n;r++)
		if(media[i] < media[r])
			menor=r;
				
		aux = alunos[i];
    	alunos [i] = alunos[menor];
    	alunos[menor] = aux;
    	
    	aux2 =media[i];
    	media[i] = media[menor];
    	media[menor] = aux2;
	}
		printf("\nMelhores Notas:\n");
		for(int g=0;g<2;g++)
		printf("%dº Aluno:\tNome: %s\tMédia: %.1f\n\n",g+1,alunos[g].nome,media[g]);
}

