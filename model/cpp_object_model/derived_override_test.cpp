#include <cstdio>
#include "derived_override.h"

int main(int argc, const char *argv[])
{
	derived_override d(100);

	printf("\n");
//	((void (*)(derived_override *))*(*(int **)&d + 0))(&d);	// D1 complete object destructor
	printf("\n");
//	((void (*)(derived_override *))*(*(int **)&d + 1))(&d);	// D0 deleting object destructor
	printf("\n");
	((void (*)(derived_override *))*(*(int **)&d + 2))(&d);	// print (为什么调用了D1后，这里就是调用base print呢)
	printf("\n");

	return 0;	
}
