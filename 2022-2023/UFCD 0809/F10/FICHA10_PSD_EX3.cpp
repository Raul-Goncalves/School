#include <stdio.h>

main(){
	
	int n[10];
	printf("Coloque 10 elementos");
	scanf("%d", &n[10]);
	for(int r=0; r<10; r++){
		
		scanf("%d", &n[r]);
	}
	
	printf("Se liga nos vetores: ");
	for(int r=0; r<10; r++)
	printf("%d\t", n[r]);
	
}
