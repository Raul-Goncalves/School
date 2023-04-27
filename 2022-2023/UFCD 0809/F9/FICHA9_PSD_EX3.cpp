#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portugues");
	
	float SALARIO[12],b=0;
	
	printf("Coloque o valor do seu salário por mês/ano: \n");
	
	for(int a=0 ; a<=11 ; a++){
		
		
	scanf("%f", &SALARIO[a]);	
	
	b=b+SALARIO[a];
	
	}
	
	printf("Total anual : %.2f", b);
	
}
