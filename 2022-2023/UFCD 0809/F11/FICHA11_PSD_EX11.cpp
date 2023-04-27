#include <stdio.h>

main()	{
 	
 	int r[2][3],a[3][2];
 	
 	printf("Insira os numeros do vetor r:\n");
 	for(int u=0;u<2;u++){
		for(int l=0;l<3;l++){
			scanf("%d",&r[u][l]);
		}	 
	 }
	 //determinar transposta
	 for(int u=0;u<2;u++){
		for(int l=0;l<3;l++){
			a[l][u]=r[u][l];
		}	 
	 }
	 printf("Vetor r: \n");	
	 for(int u=0;u<2;u++){
		for(int l=0;l<3;l++){
			printf("%d ", r[u][l]);
			
		}	
		 printf("\n");
	 }
	 printf("Vetor a transposto de r:\n");
	 for(int u=0;u<3;u++){
		for(int l=0;l<2;l++){
			printf("%d ", a[u][l]);
			
		}printf("\n");
	 }
}
