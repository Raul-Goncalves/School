#include<stdio.h>
#include<string.h>
#include<ctype.h>
#define n 10

struct funcionario
{
	char nome[10];
	float SalarioB;
	int mat;
}func[n];

main()
{	
	printf("Insira os dados do funcionario: \n");
	for(int i=0;i<n;i++)
	{
		
	printf("Matricula: ");scanf(" %d", &func[i].mat);
	printf("Nome: "); fflush(stdin); gets(func[i].nome); fflush(stdin);
	printf("Salario Bruto:");scanf(" %f", &func[i].SalarioB);
		
	}
	for(int i=0;i<n;i++)
	{
		printf("Matricula: %d\n",func[i].mat);
		printf("Nome: %s\n ", func[i].nome);
		printf("Salario Bruto: %.1f\n ",func[i].SalarioB);
		printf("Dedução SS: %.1f\n", func[i].SalarioB*0.12);
		printf("Salario Liquido: %.1f\n ", func[i].SalarioB-func[i].SalarioB*0.12);
	}
}
