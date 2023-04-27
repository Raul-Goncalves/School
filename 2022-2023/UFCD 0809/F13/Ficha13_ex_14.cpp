#<stdio.h>


float Max (float v[ ], int n){
	
	int maior=v[0];
	for(int i=0;i<=n;v++){
		if(v[i]>maior)
			maior=v[i];
	}
	return maior;
	
}
main(){
	float v[100];
	int n;
	
	printf("Coloque um tamanho vetor: ");
	scanf("%d", &n);
	printf("\nBota um vetor: ");
	for(int i=0;i<n;i++){
	scanf("%f", &v[i]);
	}
	printf("\nO maior numero será: %.2f", Max(v,n));
}
