#include <stdio.h>
#include <locale.h>

main(){
	
	setlocale(LC_ALL, "Portuguese");
	
	float NOTA[5][2],RAUL=0;
	
	printf("Insira as notas do primeiro aluno(Exame e Frequ�ncia): \n");
	for(int g=0;g<5;g++){	
		for(int h=0;h<2;h++){
			printf("\nNotas do %d .� aluno\n", g+1);
			scanf("%f",&NOTA[g][h]);
		}
		
	}
	printf("\nNotas Finais dos alunos!\n");
	for(int g=0;g<5;g++){
	RAUL=0;
	RAUL=NOTA[g][0]*0.7+NOTA[g][1]*0.3;
	printf("\n%d.� Aluno, Media da nota final: %.1f", g+1,RAUL);
		}
	
}

