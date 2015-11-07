#include <cstdio>
#include "count.h"

count::count() : x(0) { printf("count::count()\n"); }
count::~count(void) { printf("count::~count()\n"); }
count::count(const count &rhs)
{
	printf("copy structor\n");
}

count &count::operator = (const count &rhs)
{
	if (this == &rhs)	return *this;

	printf("operator =\n");

	return *this;
}

void count::print(void) const
{
	printf("%d\n", this->x);
}

void set_x(count &c, int val)
{
	c.x = val;
}
