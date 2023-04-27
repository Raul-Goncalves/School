#include <stdio.h>

main()
{

	int A;
	printf("Insira um Numero: ");
	scanf("%d",&A);

	while(A%10!=0 )
	{
		if(A%3!=0 ){
			printf("%d\n", A);
		}
		
		A++;
	}
}
