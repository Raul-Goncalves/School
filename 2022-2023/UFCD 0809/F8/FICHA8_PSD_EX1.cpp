#include<stdio.h>
#include<locale.h> 
#include<ctype.h>

main(){
	
	setlocale(LC_ALL,"Portuguese");
	char ch;
	
	printf("Introduza alguns caracteres para podermos fazer um convers�o: \n");
	
	while(1){
		
		ch=getchar();
		ch=toupper(ch);
		if(isdigit(ch))
		
		printf("%c, � d�gito!\n", ch);
		else
		printf("%c, n�o � d�gito!\n", ch);
		
		
	}
	
}
