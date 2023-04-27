#include <stdio.h>
#include <locale.h>

main()	{
	int VETOR[10], R;
	
	printf ("BOTA UM VETOR COM 10 ELEMENTOS:");
	
	for(int A=0;A<R;A++){
		scanf("%d",VETOR[A]);
	}
	
	printf ("\n O VETOR INVERTIDO PARES A 0 \n");
	for(R=A-1;R>-1;R--){
		if(VETOR[R]%2==0){
			VETOR[R]=0;
		}
		printf("Numeros pares: %d\n", VETOR[R]);
	}
}
