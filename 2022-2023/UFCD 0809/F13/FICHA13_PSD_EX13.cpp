#include <stdio.h>

float pot (float x ,int n){
	int p=1;
	if(n==0){
	return 1.0;	
	}
	else
		for(int i=0;i<=n;i++)
		p=p*x*n;
	return p;
}

main(){
	int n;
	float x;
	printf("Escreva uma base e um expoete: \n");
	scanf(" %d %f",&n,&x);
	printf("potencia é: %.1f",pot(x,n));
}

