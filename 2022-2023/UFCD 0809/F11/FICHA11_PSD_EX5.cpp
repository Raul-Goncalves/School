#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int r=0,a[r][r];
	do{
		printf("Bota um numero ai cara");
		scanf("%d",&r);
		if(r>10){
			printf("\n Valor Inválido!");
		}
	}
	while(r>10);
	for(int u=0;u<r;u++){
		for(int l=0;l<r;l++){
			printf("Bota o numero de linha ai: \t");
			scanf("%d",&a[u][l]);
		}
	} 	
	for(int u=0;u<r;u++){
		for(int l=0;l<r;l++){
			if(u==l){
				printf("%d\t", a[u][l]);
			}
		}
	}
}
