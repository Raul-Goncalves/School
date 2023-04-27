#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *a;
	float r;
	  
		
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex2_numeros.txt","rb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n”,”dados.dat");
	exit(1);
	}
	printf("Valore do ficheiro 'IMPAR': ");
	
	while(fread(&r,sizeof(float),1,a)!=0){
		printf("%1.f\n",r);
		fseek(a,sizeof(float),1);
	}
	fclose(a);
}
	
