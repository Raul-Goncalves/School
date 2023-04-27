#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	float alt[12],maior=0,a;
	int n=12, k=0;
	char nome[n][10];
	
	printf("Insira a altura dos jogadores:\n ");
	for(int r=0;r<n;r++){
		scanf("%d",&alt[r]);
	}
	
	printf("Bota os nomes dos garotos da equipe:\n ");
	for(int r=0;r<n;r++){
		scanf("%s",&nome[r]);
	for(int r=0;r<n;r++){	
	}
	a=a+alt[r];
	if(alt[r]>maior){
		maior=alt[r];
		k=r;
	}
	  printf("Jogadores a cima da media: \n");
  	for(int r=0;r<n;r++){
  		if(alt[r] > a/n){
		  }
		  maior=maior+1;d
		  printf("Altura: %.2f	Nome: %s", alt[r],nome[r]);
		}
	}
	printf("Existem %d jogadores acima da media de altura.",maior);
}

