#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int VALOR[10],r,a;
	
	printf("Bota o valor de R:\n ");
	scanf("%d", &r);
	printf("Coloque 10 numeros para os vetores: \n");
	for(int u=0;u<10;u++){
		scanf("%d",&VALOR[u]);
		if(VALOR[u]==r)
			a=a+1;
	}	
    printf("numeros de ocorrencias são: %d", a);
}
