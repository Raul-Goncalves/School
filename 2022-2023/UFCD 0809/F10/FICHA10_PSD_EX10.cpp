#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	int VALOR1[5], VALOR2[5],VALOR3[10], R=0,A=0,U=0;
	
	printf("Coloca 5 valores para os produtos: ");
	for(A=0;A<5;A++){
		scanf(" %d%d", &VALOR1[A],&VALOR2[A]);
	}
	for(A=0;A<5;A++){
		VALOR3[R]=VALOR1[A];
		VALOR3[R+1]=VALOR2[A];
		R=R+2;
	}
	
	printf("O Numero do vetor é: \n");
	for(A=0;A<5;A++){
	printf("%d", VALOR3[U]);
	}
}

