#include <stdio.h>

main(){

	int R,A,C;
	char F;


	printf("Insira um Numero e um Caracter\n");
	scanf("%d %c",&R,&F);

	for(A=1;A<=R;A++){
	printf("\n%c",F);

	for(C=2;C<=R;C++){
	printf("%c",F);
		}
	}
}
