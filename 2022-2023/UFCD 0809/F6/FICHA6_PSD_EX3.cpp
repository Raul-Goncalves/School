#include <stdio.h>

main(){
	
	int a,b,avx;
	
	printf("Introduza 2 numeros inteiros: ");
	scanf("%d %d", &a, &b);
	if(a<b)
	printf("%d %d", a, b);
	else{
		avx=b;
		b=a;
		a=avx;
		printf("%d %d", a,b);
	}
}
