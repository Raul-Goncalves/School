#include <stdio.h>
#include <ctype.h>
/*função*/
	linha3x(){
	int i; 
	/*variável local*/
	for (i=1; i<=3; i++)
	putchar('*');
	putchar('\n');
}
	linha5x(){
	int i; 
	/*variável local*/
	for (i=1; i<=5; i++)
	putchar('*');
	putchar('\n');
}
	main(){
		linha3x();linha5x();linha5x();linha3x();
	}
