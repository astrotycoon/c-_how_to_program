#include <cstdio>
#include "count.h"

int main(int argc, const char *argv[])
{
	count counter;	

	printf("counter.x after instantiation: ");
	counter.print();

	set_x(counter, 8);

	printf("counter.x after call to set_x friend function: ");
	counter.print();

	return 0;	
}
