#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *inverte (char *s ){
	char *inv;
	inv=(char*)malloc(strlen(s)); 
	inv=strrev(s);
	
	return inv;
	free(inv);
}


main(){
	
	char sir[20];
	printf("Insira uma string:\n");fflush(stdin);
	scanf("%s", sir);
	printf("O resultado sera: %s", inverte(sir));
}
