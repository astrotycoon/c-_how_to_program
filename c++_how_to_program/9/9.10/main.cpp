#include "data.h"

static void test(const data d)
{}

int main(int argc, const char *argv[])
{
	data d1(2015, 10, 9);
	data d2;

	printf("data1 = ");
	d1.print_data();
	printf("data2 = ");
	d2.print_data();

//	d2 = d1;
	test(d1);

	printf("\n\nAfter default memberwise assignment, data2 = ");
	d2.print_data();
	
	return 0;	
}
