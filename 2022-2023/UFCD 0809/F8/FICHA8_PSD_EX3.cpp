#include <stdio.h>
#include <ctype.h>

main(){
	char ch;
	ch=getchar();
	if (ch>='a' && ch <= 'z')
	putchar(ch + 'A' - 'a');  
	// vai tonar a letra que voc� escreveu em letras maiusculas
}
