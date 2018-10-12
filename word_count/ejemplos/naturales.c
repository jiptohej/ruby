// Ej. obtención de los n primeros números naturales
//     y su almacenamiento en el fichero "naturales.txt"
#include <stdio.h>
void linea(void)
{
	int i;
	
	printf("\n");
	for (i=0; i<60; ++i)
	{
		printf("*");
	}
	printf("\n");
}
void naturales(n)
{
	int i = 0;
	
	linea();
	
	while (i < n)
	{
		printf("%10d ", i);
		if (i%5==4) printf("\n");
		++i;
	}
	linea();
}
void fnaturales(n)
{
	FILE *f ;
	int i = 0;
	
	f = fopen("naturales.txt", "a");
	while (i < n)
	{
		fprintf(f, "%10d ", i);
		if (i%5==0) fprintf(f, "\n");
		++i;
	}
}

int main()
{
	naturales(100);
	fnaturales(100);
	
	return 0;
}
