#include <stdio.h>

	int soma(int x, int y){
		int soma;
		soma=x+y;
		return soma;
	}
	
	main(){
	int x=0,y=0;
		printf("Bota 2 valores para calcular: ");
		scanf("%d %d", &x,&y);
		printf("%d", soma(x,y));
		
	}

