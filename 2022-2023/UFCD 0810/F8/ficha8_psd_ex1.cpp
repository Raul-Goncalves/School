
#include<stdio.h>
#include<string.h>
#include<stdlib.h>

char *repete(char *string, int n){
	char *rep;
	rep=(char*)malloc(strlen(string)*n+(n-1));//Para as n string e os n-1 espacos em branco.
	if(rep==NULL)
	return rep;
	rep[0]='\0';
	
	for(int i=0;i<n;i++){
	strcat(rep, string);
	if(i!=(n-1))
	strcat(rep," ");
	}
	
	return rep;
	free(rep);
}

main(){
	char sir[20];
	int r;
	printf("Bota uma string:\n");fflush(stdin);
	scanf("%s",sir);
	printf("Vezes que quer repitir: ");
	scanf("%d",&r);
	printf("\nString Inserida:%s \nNumero de vezes repetida:%d\n%s", sir,r,repete(sir,r));

}
