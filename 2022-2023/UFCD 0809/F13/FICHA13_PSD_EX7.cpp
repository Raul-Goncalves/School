#include <stdio.h>

	int max(int x, int y){
			if(x<y)
				return y;
			else
				return x;
	}
	
	main(){
	int x,y;
		printf("Bota 2 valores para verificar qual é maior: ");
		scanf("%d %d", &x,&y);
		printf("\n O maior será: %d", max(x,y));
		
	}

