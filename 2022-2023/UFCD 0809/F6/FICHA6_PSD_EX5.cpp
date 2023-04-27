#include <stdio.h>

main(){
	float r,a;
	printf("Introduza o seu salário: ");
	scanf("%f",&r);
	if(r>1000)
	a=r*0.03;
	else if(r<1000)
	a=r*0.05;
	printf("O almento do seu salário sera: %f", a);
}
