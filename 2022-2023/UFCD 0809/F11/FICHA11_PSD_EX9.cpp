#include <stdio.h>

main()	{
 	
 	int somap=0,SOMAN=0,V[2][3];
	
	printf("Bota valores na matriz de 2x3:\n");
	for(int r=0;r<2;r++){
		for(int a=0;a<3;a++){	
		scanf("%d",&V[r][a]);
		if(V[r][a]>0)
		somap=somap+V[r][a];
		if(V[r][a]<0)
		SOMAN=SOMAN+V[r][a];
		}
		
	}
	printf("SOMA DOS POSITIVOS: %d\n", somap);
	printf("SOMA DOS negativos: %d", SOMAN);
}
