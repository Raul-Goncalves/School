#include <stdio.h>
#include <locale.h>
#include <ctype.h>
#include <locale.h>
#define N 2



struct CASAS
{ 
	int NumC,NAss;
	char Zona;
	float P;
	
}casas[N];

main(){
	
	setlocale(LC_ALL, "Portuguese");
	int i,m, opcao;char maius;
	float pmin,pmax;
	printf("Coloque os dados das casas\n");
	for (i=0;i<N;i++){
		
		printf("Num de id da casa: ");scanf("%d",&casas[i].NumC);
		printf("N� de quartos: ");scanf("%d",&casas[i].NAss);
	      do{
	    
	         printf("ZONA (A,B,C,D): "); scanf(" %c",&maius);fflush(stdin);
	         casas[i].Zona=toupper(maius);
	         
	      }while (casas[i].Zona<'A'||casas[i].Zona>'D');
	
            printf("Pre�o: "); scanf(" %f",&casas[i].P);
            
	}
	while(1){ 
		printf(	"Bota a op��o de pesquisa:\n\n 1- Num de id da casa (para terminar (0)\n 2-intervalo de pre�os\n");
		scanf("%d", &opcao);
		if (opcao==1){
			
		   puts("Num de id da casa a encontrar:"); scanf("%d",&m);
		   if(m==0) 	
		   break;
		   for (i=0;i<N;i++)
			if(m==casas[i].NumC)
		printf("NumC: %d\nNAss: %d\nZona: %c\nPre�o: %.2f Euros\n",casas[i].NumC, casas[i].NAss, casas[i].Zona,casas[i].P);
			else
				puts("N�o existem casas com o esse NumC");
	
		}
		else if (opcao==2){
			
		  puts("pre�o min e pre�o m�x:"); scanf("%f%f",&pmin,&pmax);
		  for (i=0;i<N;i++)
			if(casas[i].P>=pmin && casas[i].P>=pmax)
			
		printf("NumC: %d\nNAss: %d\nZona: %c\nPre�o: %.2f Euros\n",casas[i].NumC, casas[i].NAss, casas[i].Zona,casas[i].P);
		  else
		puts("N�o existem casas com pre�o dentro dos valores    pretendidos!");
		}
	
	     else
			puts("Op��o inv�lida!");
	}
}

