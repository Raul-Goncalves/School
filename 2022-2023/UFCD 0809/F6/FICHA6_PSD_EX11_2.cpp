#include<stdio.h>

main(){
	
	int mes;
	printf("Insira o m�s de 1 � 12");
	scanf("%d", &mes);
	
	if(mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10 || mes==12)
	printf("O m�s tem 31 dias");
	else if(mes == 2)
	printf("O m�s tem 28 dias");
	else if(mes == 4||mes == 6||mes == 9||mes == 11)
	printf("O m�s tem 30 dias");
	else
	printf("M�s invalido");
	
}
