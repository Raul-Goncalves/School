#include <stdio.h>

media(float x, float y, float z){

	return(x+y+z)/3;
}

main(){
	float r,a,c;
	printf("Bota 3 valores para calcular: \n");
	scanf("%f %f %f",&r,&a,&c);
	printf("A media seria: %.1f" , media(r,a,c));
}
