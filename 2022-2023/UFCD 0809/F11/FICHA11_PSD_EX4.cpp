#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");

	float R[2][3], MAIS, SOMA;

	printf("Insira os elementos dos vetores: \n");
	for(int RA=0;RA<2;RA++){
		for(int UL=0;UL<3;UL++){
			scanf("%f", &R[RA][UL]);
		}
	}
	for(int RA=0;RA<2;RA++){
		for(int UL=0;UL<3;UL++){
			scanf("%f", &R[RA][UL]);
			MAIS=R[RA][UL]+MAIS;
		}
	}
	for(int RA=0;RA<2;RA++){
		for(int UL=0;UL<3;UL++){
			SOMA=MAIS/15;
		}
	}
	
	printf("A soma seria: %.1f\n", MAIS);
	printf("A média seria: %.1f", SOMA);
	
}
