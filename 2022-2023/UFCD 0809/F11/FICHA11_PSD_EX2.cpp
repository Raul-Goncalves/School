#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	float NOTA[3][4],RAUL;
	
	printf("ESCREVA UM VETOR COM 12 ELEMENTS!: \n");
	for(int a=0;a<3;a++){
		for(int b=0;b<4;b++){
			printf("\nN[%d][%d]: ", a,b);
			scanf("%f", &NOTA[a][b]);
		}
// VERIFICAÇÃO DO MAIOR
	RAUL=NOTA[0][0];
	for(int a=0;a<3;a++){
		
		for(int b=0;b<4;b++){
			if(NOTA[a][b]> RAUL)
				RAUL=NOTA[a][b];
			
			}
		}
	}printf("\nO MAIOR ELEMETO SERA: %.2f", RAUL);
}
