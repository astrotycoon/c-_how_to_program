#include <cstdio>
#include "derived_virtual_inherit1.h"

int main(int argc, const char *argv[])
{
	derived_virtual_inherit1 dvi1(888888);

	printf("\n");
//	((void (*)(derived_virtual_inherit1 *))*(*(int **)&dvi1 + 0))(&dvi1);	// D1
	printf("\n");
//	((void (*)(derived_virtual_inherit1 *))*(*(int **)&dvi1 + 1))(&dvi1);	// D0
	printf("\n");
//	((void (*)(derived_virtual_inherit1 *))*(*(int **)&dvi1 + 2))(&dvi1);	// print
	printf("\n");
//	((void (*)(derived_virtual_inherit1 *))*(*(int **)&dvi1 + 3))(&dvi1);	// inherit1_print 
	printf("\n");
	printf("\n");
	int *_vptr = *(int **)((int)&dvi1 + 8);
//	((void (*)(derived_virtual_inherit1 *))*(_vptr + 0))(&dvi1);	// D1
	printf("\n");
//	((void (*)(derived_virtual_inherit1 *))*(_vptr + 1))(&dvi1);	// D0
	printf("\n");
	((void (*)(derived_virtual_inherit1 *))*(_vptr + 2))(&dvi1);	// inherit1_print
	printf("\n");

	printf("iderived_virtual_inherit1 = %d\n", *(int *)((int)&dvi1 + 4));
	printf("ibase = %d\n", *(int *)((int)&dvi1 + 12));

	return 0;	
}

//	---------------------------------
//	|			vptr				|	-> D1 D0 print inherit1_print
//	---------------------------------
//	|   iderived_virtual_inherit1	|
//	---------------------------------
//	|			vptr				|	-> D1 D0 inherit1_print
//	---------------------------------
//	|			ibase				|
//	---------------------------------

