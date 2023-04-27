#include <stdio.h>

	int entre(int x, int lim_inf, int limp_sup){
		return x>=lim_inf && x<=limp_sup;
}
	main(){
		int x, li, ls;
		printf("bota valor e o intervalo\n");		
		scanf(" %d %d %d",&x,&li,&ls);
		if(entre(x,li,ls)==1)
		printf("O valor está no intervalo!");
		else
		printf("O valor não esta no intervalo");
	}

