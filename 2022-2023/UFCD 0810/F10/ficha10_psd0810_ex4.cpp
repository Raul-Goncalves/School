#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *a;
	float r[10],media=0;
	  
		
	a=fopen("C:/Users/Utilizador/Documents/raulzao/numeros.txt","r");
	for(int l=0;l<10;l++){
		fscanf(a,"%f",&r[l]);
	
		
	}
		for(int l=0;l<10;l++)
				media=media+r[l];
		
	printf("Média:%f\n", media/10);
	fclose(a);
}
