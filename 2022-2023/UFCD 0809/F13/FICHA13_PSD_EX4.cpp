#include <stdio.h>

	int soma(int x, int y){
		return x+y;
	}	
	int sub(int x, int y){
		return x-y;
	}	
	int div(int x, int y){
		return x/y;
	}	
	int mult(int x, int y){
		return x*y;
	}
	
	main(){
		char s;
		int x,y;
		printf("Bota 2 valores para calcular:\n");
		scanf(" %d %d", &x,&y);
		printf("\n Coloque uma opera��o para efetuar (+|-|*|/)");
		scanf(" %c", &s);
		
		switch(s){
			case '+' : printf("A soma sera: %d", soma(x,y)); break;
			case '-' : printf("A subtra��o sera: %d", sub(x,y)); break;
			case '*' : printf("A multiplica��o sera: %d", mult(x,y)); break;
			case '/' : printf("A divis�o sera: %d", div(x,y)); break;
			default : printf("Opera��o invalida");
			
		}
		
	}

