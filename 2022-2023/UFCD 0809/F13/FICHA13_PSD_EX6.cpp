#include <stdio.h>

	int soma(int x, int y){
		int soma;
		soma=x+y;
		return soma;
	}
	
	int produto(int soma){
		int produto;
		produto=soma*2;
		return produto;
	}
	
	main(){
	int x=0,y=0;
		printf("Bota 2 valores para calcular para somar: ");
		scanf("%d %d", &x,&y);
		printf("A soma será: %d", produto(soma(x,y)));
		
	}

