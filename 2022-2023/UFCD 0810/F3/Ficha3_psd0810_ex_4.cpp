#include <stdio.h>
#include <string.h>
#define als 2

struct biblioteca{
	
	int ano,quantidade;
	char titulo[30],author[30],codigo[6];
	
}bibli[als];

main(){
	
	char c[6];
	int i=0;

	for(int r=0;r<als;r++){	
		printf("Dados do livro:\n");
		printf("Digite o Código do Livro Indicado:\n");fflush(stdin);scanf("%d", &bibli[r].codigo);
		printf("Digite o Titulo do Livro:\n");fflush(stdin);scanf("%c", &bibli[r].titulo);
		printf("Digite o Autor do Livro:\n");fflush(stdin);scanf("%c", &bibli[r].author);
		printf("Digite o Ano de Edição do Livro:\n");scanf("%d", &bibli[r].ano);
		printf("Digite a Quantidade de Livros:\n");scanf("%d", &bibli[r].quantidade);
	}
		printf("Coloque o codigo do livro que quer procurar. \n");scanf("%s", &c);
		
	for(int r=0;r<als;r++){	
	
		if(strcmp(c,bibli[r].codigo)==0){
			
			printf("Encontrado."); i=1;
			break;
		}
	}
	if(i==0)
		printf("Não foi encontrado!");
}
