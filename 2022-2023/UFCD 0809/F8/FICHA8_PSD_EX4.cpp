#include <stdio.h>
#include <ctype.h>
#include <conio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portugues");
	
	char a;
	int r;
	
	printf("Insira um inteiro?");
	scanf("%d", &r);
	
	a=(char) (r+1);
	
	printf("%d %c", r+1 , a );
}
