#include <cstdio>
#include "increment.h"

increment_t::increment_t(int c, int i) 
	: count(c), 	// initializer for non-const member
	  increment(i)	// required initializer for const member
//      ref(count)	// required initializer for data member that are reference
{
	printf("increment_t::increment_t()\n");
}

increment_t::increment_t(const increment_t &rhs)
	: increment(rhs.increment) 	// required initializer for const member
{
	this->count = rhs.count;
//	this->increment = rhs.increment;	// assigment is not allowed
	printf("increment_t::increment_t() copy\n");
}

const increment_t &increment_t::operator = (const increment_t &rhs)
{
	if (this == &rhs)	return *this;

	this->count = rhs.count;
//	this->increment = rhs.increment; 	// ??
	printf("increment_t &increment_t::operator =\n");

	return *this;
}

increment_t::~increment_t(void)
{
	printf("increment_t::~increment_t()\n");
}

void increment_t::print(void) const
{
	printf("count = %d, increment = %d\n", this->count, this->increment);
}

