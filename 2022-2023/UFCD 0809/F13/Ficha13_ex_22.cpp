#include <stdio.h>

void primo(int b){
	 if(b%2||b==2){
	 printf("O numero é primo!");
	 }
	 else{
		printf("O numero não e primo");
	 }
}

main(){
	 int r;
	 printf("Insira um numero para verificar se é primo ou não: ");
	 scanf("%d", &r);
	 primo(r);
		
}
