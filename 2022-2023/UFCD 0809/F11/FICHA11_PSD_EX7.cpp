#include <stdio.h>
	main() { 
	int NUM[100], I, J, N, Maior=0, AUX; 
// leitura dos números 
	printf ("bota a dimensão do vetor: "); 
	scanf("%d", &N); 
	for (I=0; I<N;I++) 
	scanf("%d", &NUM[I]); 
// processamento dos N elementos do vetor 
	for (I=0; I<N-1;I++) { 
	Maior=I; 
// obter o elemento com menor valor 
	for (J=I+1; J< N; J++) 
	if (NUM[J] >NUM[Maior] ) 
	Maior =J; 
// troca de elementos do vetor A
	AUX =NUM[Maior]; NUM[Maior] =NUM[I]; NUM[I] = AUX; 
	} 
	printf("\n"); 
}
