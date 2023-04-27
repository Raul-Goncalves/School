#include<stdio.h>
#include<locale.h> 
#include<ctype.h>

main(){
	
	setlocale(LC_ALL,"Portuguese");
	char ch;
	
	printf("Introduza alguns caracteres para podermos fazer um conversão: \n");
	
	while(1){
		
		ch=getchar();
		ch=toupper(ch);
		if(isdigit(ch))
		
		printf("%c, é dígito!\n", ch);
		else
		printf("%c, não é dígito!\n", ch);
		
		
	}
	
}
