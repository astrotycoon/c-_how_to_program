#include <cstdio>
#include "derived_multip_inherit.h"

derived_multip_inherit::derived_multip_inherit(int i)
	: base(0), base1(1), iderived_multip_inherit(i)
{
	printf("\033[40;35mderived_multip_inherit::derived_multip_inherit()\n\033[0m");
}

derived_multip_inherit::~derived_multip_inherit(void)
{
	printf("\033[40;35mderived_multip_inherit::~derived_multip_inherit()\n\033[0m");
}

void derived_multip_inherit::print(void) const
{
	printf("\033[40;35mderived_multip_inherit::print()\n\033[0m");
}

void derived_multip_inherit::test_fun(void)
{
	printf("\033[40;35mderived_multip_inherit::test_fun()\n\033[0m");
}

