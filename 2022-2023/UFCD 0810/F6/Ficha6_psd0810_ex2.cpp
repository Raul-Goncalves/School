#include <stdio.h>
#include <string.h>

main(){
	
	char by[10], *p=by;
	gets(by);
	for(p=by;*p!='\0';p++)
	putchar(*p);printf("\n");
	for(p=p-1;p>=by;p--)

	putchar(*p);
}
