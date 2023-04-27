#include <stdio.h>

main(){
	float a,b;
	printf("Introduza dois nº reais\n");
	scanf("%f%f", &a,&b);
	
	if(b=0)
	 printf("%.1f / %.1f = %.1f\n", a,b, a/b);
	else
	 printf("DIVISÃO POR ZERO!\n");
}
