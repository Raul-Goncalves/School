#include  <stdio.h>
main(){
	
	float a;
	char g;
	
	printf("Insira o genero que voc� pertence. <M> Masculino - <F> Feminina\n");
	scanf("%c", &g);
	printf("Insira seu sal�rio? \n");
	scanf("%f", &a);
	
	switch(g){
		
		case 'm':
		case 'M': a=a*0.10; break ; 
		case 'f':
		case 'F': a=a*0.15 ; break ; 
		
		deafault : printf("Insira um g�nero correto");
		
	}
	
	printf("O seu s�lario � de %.2f", a);
}
