#include <cstdio>
#include "derived_multip_inherit.h"

int main(int argc, const char *argv[])
{
	derived_multip_inherit dmi(333);

	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 0))(&dmi); 	// D1
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 1))(&dmi);	// D0
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 2))(&dmi);	// derived_multip_inherit::print 
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 3))(&dmi);	// derived_multip_inherit::test_fun
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 4))(&dmi);	// xxx 
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)((int)&dmi + sizeof(base)) + 0))(&dmi);	// D1
	printf("\n");
//	((void (*)(derived_multip_inherit *))*(*(int **)((int)&dmi + sizeof(base)) + 1))(&dmi);	// D0
	printf("\n");
	((void (*)(derived_multip_inherit *))*(*(int **)((int)&dmi + sizeof(base)) + 2))(&dmi);	// base1::print 
	printf("\n");

	return 0;	
}
