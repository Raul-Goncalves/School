#include <stdio.h>
main()
{
int a=5, b=7, *ptr;
	ptr = &a;
	ptr = &b;
	*ptr=20;
	printf("%d %d %d %d %d %d %d",a, &a, b, &b, ptr, &ptr, *ptr);
}
