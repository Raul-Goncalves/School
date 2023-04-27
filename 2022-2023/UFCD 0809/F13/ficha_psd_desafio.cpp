#include <stdio.h> 
#include <string.h> 

main() { 
	int a,b,menor; 
	char s[3][20],aux[20]; 
	
	printf("Insira as strings:\n"); 
	for(a=0;a<3;a++) 
		scanf("%s",&s[a]); 
	for(a=0;a<3;a++) { 
		menor=a; 
	for (b=a+1;b<3;b++) 
		if (strcmp(s[a],s[b])>0) { 
		menor=b; 
		strcpy(aux,s[a]); 
		strcpy(s[a],s[menor]); 
		strcpy(s[menor],aux); 
		} 
	} 
	printf("Vetor por ordem alfabetica:\n"); 
	for(a=0;a<3;a++) 
	printf("%s\t",s[a]); 
}
