#include <stdio.h>


void Ler (int v[5][2]){
	for(int i=0;i<5;i++)
	for(int r=0;r<2;r++)
		scanf("%d", &v[i][r]);
}
main(){
	int v[5][2];
	
	printf("\nBota OS ELEMENTOS DE um vetor 5*2: ");
	Ler (v);
}
