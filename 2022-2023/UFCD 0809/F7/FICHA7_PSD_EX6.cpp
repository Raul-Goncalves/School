#include <stdio.h>

main(){

	int R,A,C;
	printf("Insira um Numero \n");
	scanf("%d",&R);

	for(A=1;A<=R;A++){

	for(C=1;C<=A;C++){
		printf("%d",C);
		}
		printf("\n");
	}
}
