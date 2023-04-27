#include <stdio.h>

main(){
	
	int i, b=0, r=1, a;
	
	printf("Insira um numero inteiro para calcular: ");
	scanf("%d", &a);
	
	for(i=1 ; i<=a; i++){
		
		b=b+i;
		r=r*i;
		
	}	
	
	
	
	printf("%d , %d", b,r);
}
