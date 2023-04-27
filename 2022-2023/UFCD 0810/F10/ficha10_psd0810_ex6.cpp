#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
main()
{
	FILE *a;
	char d[40],cidademmm[20];
	float tempo,maior=-25;
	a=fopen("C:/Users/Utilizador/Documents/raulzao/tempCidade.txt","w");
	printf("Bota os nomes da cidades e as temperaturas:\n");
	for(int c=0;c<4;c++){
		fflush(stdin);
	gets(d);
	scanf("%f",&tempo);
	fprintf(a,"%s\t%1.1f\n",d,tempo);
	}	
fclose(a);
	a=fopen("C:/Users/Utilizador/Documents/raulzao/tempCidade.txt","r");
	for(int c=0;c<4;c++){
	fscanf(a,"%s\t%f",&d,&temp);
	if(tempo>maior){
	maior=tempo;
	strcpy(cidademmm,d);
		}
	}
printf("A cidade com a maior temperatura que tem é :%s e a sua temperatura é de:%f",cidademmm,maior);
}
