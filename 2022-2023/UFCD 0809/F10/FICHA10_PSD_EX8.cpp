#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portugues");
	
	int VALOR[10],A[10],B[10];
	
	printf("Bota 10 valores para o primeiro vetor:\n ");
	for(int c=0;c<10;c++){
		scanf("%d",&A[c]);
	}
	printf("Bota 10 numbers para o segundo vetor:\n ");
	for(int c=0;c<10;c++){
		scanf("%d",&VALOR[c]);
		B[c]=VALOR[c]+A[c];
	}
	printf("OS VETORES É: \n");
	for(int c=0;c<10;c++){
	printf("%d\n", B[c]);	
	}
	
}
