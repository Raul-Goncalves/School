#include <stdio.h>
main(){
	int r,u,l;
	printf("escolha um numero !");
	scanf("%d",&r);
	l=r;
	for(u=1;u<=r;u++){
	 printf("%d\t%d\n",r,l);
	 l=l-1;
	}
}
