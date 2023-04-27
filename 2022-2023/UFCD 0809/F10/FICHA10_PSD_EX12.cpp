#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int VALOR[10], R,A=0;
	
	printf("Coloca o valor de um produto: ");
	scanf("%d",&R);
	printf("Bota 10 numeros para os produtos: \n");
	for(int U=0;U<10:U++){
		scanf("%d",&VALOR[U]);
		if(VALOR[U] == R){
			A=A+1;
		}
	printf("Numero de produtos são: %d\n",A)
	}
	
}

