#include <cstdio>
#include "increment.h"

const increment_t *fun1(void) 
{
	increment_t *it = new increment_t(5, 5);

	it->print();

	return it;
}

void fun2(const increment_t *it)
{
	it->print();
}

int main(int argc, const char *argv[])
{
#if 0
	increment_t value(10, 5);

	printf("before incrementing: ");
	value.print();

	for (int i = 1; i <= 3; i++) {
		value.add_increment();
		printf("after increment %d: ", i);
		value.print();
	}

	const increment_t *pi = &value;
	const increment_t &refi = value;
#endif
	const increment_t *pit = fun1(); 
//	pit->add_increment();	// error
	fun2(pit);
	delete pit;

	return 0;	
}
