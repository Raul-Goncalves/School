#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portugues");
	
	int valor[10],r,b=0,c=0;
	
	printf("Bota 10 eletemos: \n");
	
	for(r=0 ; r<10 ; r++){	
		
	scanf("%d", &valor[r]);	
	if(valor[r]%2==0)
	b=b+1;
	if(valor[r]!=0)
	c=c+1;
	
	}
	
	printf("Os numeros dos elementos par são: %d\n", b);
	printf("Os numeros dos elementos impar são : %d", c);
	
}
