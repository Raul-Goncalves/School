#include  <stdio.h>
main(){
	
	float a;
	char g;
	
	printf("Insira o genero que você pertence. <M> Masculino - <F> Feminina\n");
	scanf("%c", &g);
	printf("Insira seu salário? \n");
	scanf("%f", &a);
	
	switch(g){
		
		case 'm':
		case 'M': a=a*0.10; break ; 
		case 'f':
		case 'F': a=a*0.15 ; break ; 
		
		deafault : printf("Insira um género correto");
		
	}
	
	printf("O seu sálario é de %.2f", a);
}
