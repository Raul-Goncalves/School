#include <stdio.h>

float situacao(){
	float a,b=0;
	int c=0;
	while(1){
		scanf("%f", &a);
		if(a==0)
		break;
		b=b+a;
		c++;
	}
	if(c==0){
		return 0;
	}
	return b/c;
}

main(){
	float a,b=0,c;
	printf("Bota as notas do aluno: \n");
	if(situacao()>=9.5){
		printf("\nAprovado");
	}
	else{
		printf("\nReprovado");
	}
		
}
