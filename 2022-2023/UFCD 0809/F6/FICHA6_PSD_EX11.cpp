#include<stdio.h>

main(){
	
	int mes;
	printf("Insira o m�s de 1 � 12");
	scanf("%d", &mes);
	
	switch(mes){
		
		case 1 :
		case 3 :
		case 5 :
		case 7 :
		case 8:
		case 10 :
		case 12 : printf("O m�s tem 31 dias"); break; 
		case 2 : printf("O m�s tem 28 a 29 dias"); break;
		case 4 :
		case 6 :
		case 9 :
		case 11 : printf("O m�s tem 30 dias"); break; 
		
	}
}
