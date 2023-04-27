#include<stdio.h>

main(){
	
	int mes;
	printf("Insira o mês de 1 á 12");
	scanf("%d", &mes);
	
	switch(mes){
		
		case 1 :
		case 3 :
		case 5 :
		case 7 :
		case 8:
		case 10 :
		case 12 : printf("O mês tem 31 dias"); break; 
		case 2 : printf("O mês tem 28 a 29 dias"); break;
		case 4 :
		case 6 :
		case 9 :
		case 11 : printf("O mês tem 30 dias"); break; 
		
	}
}
