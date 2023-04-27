#include <stdio.h>
#include <ctype.h>
/*função*/
	linha(int numero, char ch){
	int i; 
	/*variável local*/
	for (i=1; i<=numero; i++)
	putchar(ch);
	putchar('\n');
}
	main(){
	int numero;
	char ch;
	printf("INDICA UMA QUANTIA E UM LETRA PARA REPITIR NUMERO/LETRA: ");
	scanf("%d %c", &numero,&ch);
	linha(numero,ch);
}
