#include <stdio.h>

main(){
	
	short int i;
	float m ;
	long int n ;
	printf("Coloque uma idade: ");
	scanf("%hd", &i);
	printf("\nColoque o dinheiro para depositar: ");
	scanf("%f",&m);
	printf("\nNumero da conta que deseja depositar: ");
	scanf("%ld", &n);
	printf("Idade=%d\nDeposito=%f\nNumero da conta=%ld", &i,&m,&n);
}
