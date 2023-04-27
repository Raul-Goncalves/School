#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *metade (char *s ){
	char *met;
	met=(char*)malloc(strlen(s)/2); 
	if(met==NULL)
	return met;
	
	strncpy(met,s,strlen(s)/2);
	
	met[strlen(s)/2]='\0';
		
	return met;
	free(met);
}


main(){
	
	char sir[20];
	printf("Insira uma string:\n");fflush(stdin);
	scanf("%s", sir);
	printf("O resultado sera: %s", metade(sir));
}
