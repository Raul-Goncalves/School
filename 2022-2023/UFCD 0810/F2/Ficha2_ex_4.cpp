#include <stdio.h>
#define n 2

typedef struct Data{

	int dia, ano;
	char mes[4] ;

	}dt;

typedef struct individuo{
	char nome[50];
	int idade;
	dt data_nasc ;

	}pessoa;
	
main(){
	pessoa p[n];
	
	printf("Insira os dados das pessoas em geral:\n");
	for(int i=0;i<n;i++){
		printf("Coloque o nome da pessoa:\n");
		scanf("%s", &p[i].nome);
		printf("Coloque a sua idade:\n");
		scanf("%d", &p[i].idade);
		printf("Coloque o dia que você nasceu:\n");
		scanf("%d", &p[i].data_nasc.dia);
		printf("Coloque o mês que você nasceu:\n");
		scanf("%s", &p[i].data_nasc.mes);
		printf("Coloque o ano que você nasceu:\n");
		scanf("%d", &p[i].data_nasc.ano);
	}
		for(int i=0;i<n;i++){
		printf("\nNome da pessoa: %s\n", p[i].nome);
		printf("Idade: %d\n", p[i].idade);
		printf("Dia de nascimento: %d-%s-%d\n", p[i].data_nasc.dia ,p[i].data_nasc.mes, p[i].data_nasc.ano);


	}
}
