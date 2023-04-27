#include <stdio.h>
#include <string.h>
#define n 2

struct banco{
	
	char nome[50];
	int codigo, dia, mes, ano;
	float limite, saldo;
		
}pessoalfisica[n];

main(){
	
	for(int i=0;i<n;i++){	
		
		printf("Digite o Código da sua conta do banco: \n");fflush(stdin);scanf("%d", &pessoalfisica[i].codigo);
		printf("Nome do Titular da Conta: \n");fflush(stdin);scanf("%s", &pessoalfisica[i].nome);
		printf("Digite um limite de crédito para sua conta entre (de 500,00 a 3000.00)\n");fflush(stdin);scanf("%f", &pessoalfisica[i].limite);
		printf("Digite a data de criação da sua conta do banco: \n");fflush(stdin);scanf("%d%d%d", &pessoalfisica[i].dia,&pessoalfisica[i].mes, &pessoalfisica[i].ano);
		printf("Coloque o saldo do da sua conta: \n");fflush(stdin);scanf("%f", &pessoalfisica[i].saldo);
	}
	for(int i=0;i<n;i++){
		printf("\nDigite o Código da sua conta do banco: %d\n", pessoalfisica[i].codigo);
		printf("Nome do Titular da Conta: %s\n", pessoalfisica[i].nome);
		printf("O limite da sua conta será: %.2f\n", pessoalfisica[i].limite);
		printf("Data de Criação da sua conta: %d-%d-%d\n", pessoalfisica[i].dia,pessoalfisica[i].mes,pessoalfisica[i].ano);
		printf("Seu Saldo: %.2f \n", pessoalfisica[i].saldo);
	}
}
