#include <cstdio>
#include "base1.h"

base1::base1(int i) : ibase1(i)
{
	printf("\033[40;35mbase1::base1()\n\033[0m");
}

base1::~base1(void)
{
	printf("\033[40;35mbase1::~base1()\n\033[0m");
}

void base1::print(void) const
{
	printf("\033[40;35mbase1::print()\n\033[0m");
}
