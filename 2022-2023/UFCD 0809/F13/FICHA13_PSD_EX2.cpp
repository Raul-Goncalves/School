#include <stdio.h>
#include <ctype.h>
/*fun��o*/
	linha(int numero, char ch){
	int i; 
	/*vari�vel local*/
	for (i=1; i<=numero; i++)
	putchar(ch);
	putchar('\n');
}
	main(){
	int numero;
	char ch;
	printf("BOTA UMA QUANTIA E UM LETRA PARA REPITIR NUMERO/LETRA: ");
	scanf("%d %c", &numero,&ch);
	for(int r=0;r<numero;r++){
	printf("\n");
	printf("Seu caracater digita �: %c", ch);	
	}	
}
