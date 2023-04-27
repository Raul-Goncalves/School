#include<stdio.h>

main(){
	
	int i=1 ,j=1;
	
	while(i<6){
	j=1;
	
	while(j<=10){
		printf("%dX%d=%d\n",i,j,i*j);
		j++;
	}	
	i++;
	printf("\n");
  }
	
}
