#include <stdio.h>

void primo(int b){
	 if(b%2||b==2){
	 printf("O numero � primo!");
	 }
	 else{
		printf("O numero n�o e primo");
	 }
}

main(){
	 int r;
	 printf("Insira um numero para verificar se � primo ou n�o: ");
	 scanf("%d", &r);
	 primo(r);
		
}
