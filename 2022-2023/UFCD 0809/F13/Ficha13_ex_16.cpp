#include <stdio.h>

x_isdigit(char valor){
	if(valor>='0'&& valor<='9')
		printf("%c � um digito", valor);
	else
		printf("%c n�o � um digito", valor); 
}

main(){
	char valor;
	printf("Digite um caractere para indicarmos se � digito ou n�o: \n");
	scanf(" %c", &valor);
	x_isdigit(valor);
}
