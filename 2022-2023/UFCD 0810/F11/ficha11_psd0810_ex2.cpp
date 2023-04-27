#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

main(){
	
	FILE *a;
	float r[10],m;
	  
		
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex2_numeros.txt","wb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n”,”dados.dat");
	exit(1);
	}
	
	
	for(int l=0;l<10;l++){
		printf("Introd. O %d-esimo N.o real:", l+1);
		scanf("%f",&r[l]);
		fwrite(&r[l],sizeof(float),1,a);
		
	}
	fclose(a);
	
	a=fopen("C:/Users/Utilizador/Documents/raulzao/ficha11_ex2_numeros.txt","rb");
	
	if (a==NULL){
	printf("Impossível abrir o ficheiro %s\n”,”dados.dat");
	exit(1);
	}
		float p;
		printf("Qual a ordem do Número que pretende ver 1..10: ");
		scanf("%f", &p);
		fseek(a,(p-1)*sizeof(float),0);
		fread(&m,sizeof(float),1,a);
		printf("O 4.º valor introduzido foi %1.1f\n",m );
		
		fseek(a,0*sizeof(float),0);  //rewind(a);
		fread(&m,sizeof(float),1,a);
		printf("O 1.º valor introduzido foi %1.1f\n",m);
		
		fseek(a,-sizeof(float),2);  //rewind(a);
		fread(&m,sizeof(float),1,a);
		printf("O ultimo valor introduzido foi %1.1f\n",m);
		
		
	fclose(a);
	
}
