#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int VALOR[10],R,A;
	bool U=0;
	
	printf("Bota o valor de alguma coisa ai meu patrão: ");
	scanf("%d",&R);
	printf("Insira seu contatinho ai pa nois!: \n");
	
	for(A=0;A<10;A++){
	scanf("%d",&VALOR[A]);
	
		if(VALOR[A]==R)
	U=1;	
	}
	if(U==0)
	printf("O VALOR NÃO TÁ NO CONTADINHO!");
	else
	printf("O VALOR TÁ NO CONTADINHO!");
}

