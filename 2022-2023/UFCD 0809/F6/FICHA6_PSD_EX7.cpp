#include <stdio.h>

main(){
	int c,d,a;
	char r;
	
	printf("Indique 2 numeros inteiros para mim! ");
	scanf(" %d &d ",&c,&d);
	printf("Qual tipo de conta quere aplicar: ");
	scanf(" %c ",&r);
	
	
	switch(r){
	
		case '+' : a=c+d; printf("A sua conta sera %2d" , d); break; 
		case '-' : a=c-d; printf("A sua conta sera %2d" , d); break; 
		case '*' : a=c*d; printf("A sua conta sera %2d" , d); break; 
		case '/' : a=c/d; printf("A sua conta sera %2d" , d); break; 
		case '%' : a=c%d; printf("A sua conta sera %2d" , d); break; 
		
		deafault : printf("Insira um tipo operação que quer aplica na sua conta!");
	}
	
	
}
