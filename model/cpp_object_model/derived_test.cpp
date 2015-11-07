#include <cstdio>
#include "derived.h"

int main(int argc, const char *argv[])
{
#if 1
	derived d(100);
	
	printf("\n");
//	((void (*)(derived *))*(*(int **)&d	+ 0))(&d);
	printf("\n");
//	((void (*)(derived *))*(*(int **)&d	+ 1))(&d);
	printf("\n");
//	((void (*)(derived *))*(*(int **)&d	+ 2))(&d); 	// base::print
	printf("\n");
//	((void (*)(derived *))*(*(int **)&d	+ 3))(&d);	// base::derived_print
	printf("\n");
#endif

#if 0
	derived *pd = new derived(100);

	printf("\n");
	((void (*)(base *))*(*(int **)pd + 0))(pd);	
	printf("\n");
	((void (*)(base *))*(*(int **)pd + 1))(pd);	

//	delete pd;
#endif
	return 0;	
}
