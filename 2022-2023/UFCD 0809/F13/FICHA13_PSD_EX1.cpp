#include <stdio.h>
#include <ctype.h>
/*fun��o*/
	linha3x(){
	int i; 
	/*vari�vel local*/
	for (i=1; i<=3; i++)
	putchar('*');
	putchar('\n');
}
	linha5x(){
	int i; 
	/*vari�vel local*/
	for (i=1; i<=5; i++)
	putchar('*');
	putchar('\n');
}
	main(){
		linha3x();linha5x();linha5x();linha3x();
	}
