#include <stdio.h>

main(){
	
	float a;
	printf("Introduza um numero do raio: ");
	scanf("%f", &a);
	printf("Area=%f", 3.1416*(a*a));
	printf("\nPerimetro=%f", (3.1416*3.1416)*a);
}
