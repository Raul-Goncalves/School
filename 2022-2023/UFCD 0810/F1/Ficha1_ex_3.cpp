#include<stdio.h>
#define n 10

struct turma{
	
	char nome[30];
	int numero;
	float port,mat,psd;
	
	
}tua[n];

main(){
	float media;int num;
	printf("Bota o nome, o numero e as 3 notas do aluno\n");
	for(int i=0;i<n;i++){
		printf("Aluno %d:\n", i+1);
		scanf("%s%d%f%f%f",&tua[i].nome,&tua[i].numero,&tua[i].port,&tua[i].mat,&tua[i].psd);
		
	}
		printf("Aluno a pesquisar: ");
		scanf("%d",&num);
		for(int i=0;i<n;i++){
			if(num==tua[i].numero){
			media=(tua[i].mat+tua[i].psd+tua[i].port)/3;
			printf("\n-----------------------");
			printf("\nAluno %d:\n", i+1);
			printf("Nome: %s Numero: %d Notas: %.1f, %.1f, %.1f Média: %1.f\n",tua[i].nome,tua[i].numero,tua[i].port,tua[i].mat,tua[i].psd,media);
		}
	}
}
