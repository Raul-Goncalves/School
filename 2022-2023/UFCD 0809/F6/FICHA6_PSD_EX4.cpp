#include <stdio.h>

main(){
	char e;
	float d, total;
	
	printf("Digite <C> se você for casada, caso acontraio digite <S>: ");
	scanf("%c",&e);
	printf("Insira o seu ordenado: ");
	scanf("%f",&d);
	if(e=='c' || e=='C')
	total=d*0.05;
		else if(e =='s' || e == 'S')
		total=d*0.10;
	printf("O seu imposto a pagar é de %.2f€", total);
}
