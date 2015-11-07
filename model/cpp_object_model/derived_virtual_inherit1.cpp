#include <cstdio>
#include "derived_virtual_inherit1.h"

derived_virtual_inherit1::derived_virtual_inherit1(int i) : base(1), iderived_virtual_inherit1(i) 
{
	printf("\033[40;35mderived_virtual_inherit1::derived_virtual_inherit1()\n\033[0m");
}

derived_virtual_inherit1::~derived_virtual_inherit1(void) 
{
	printf("\033[40;35mderived_virtual_inherit1::~derived_virtual_inherit1()\n\033[0m");
}

void derived_virtual_inherit1::print(void) const
{
	printf("\033[40;35mderived_virtual_inherit1::print(), iderived_virtual_inherit1 %d\n\033[0m", this->iderived_virtual_inherit1);
}

void derived_virtual_inherit1::inherit1_print(void) const
{
	printf("\033[40;35mderived_virtual_inherit1::inherit1_print(), iderived_virtual_inherit1 %d\n\033[0m", this->iderived_virtual_inherit1);
}

