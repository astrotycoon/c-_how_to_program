#include <cstdio>
#include "employee.h"

int main(int argc, const char *argv[])
{
	date birth(7, 24, 1949);	
	date hire(3, 12, 1988);
	employee manager("Bob", "Blue", birth, hire);
	printf("\n");
	manager.print();
	printf("\nTest Date constructor with invalid values:\n");
	date last_day_off(14, 35, 1994);
	printf("\n");

	return 0;	
}
