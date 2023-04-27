#include <stdio.h>

x_isdigit(char valor){
	if(valor>='0'&& valor<='9')
		printf("%c é um digito", valor);
	else
		printf("%c não é um digito", valor); 
}

main(){
	char valor;
	printf("Digite um caractere para indicarmos se é digito ou não: \n");
	scanf(" %c", &valor);
	x_isdigit(valor);
}
