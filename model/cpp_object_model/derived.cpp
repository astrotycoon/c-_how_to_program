#include <cstdio>
#include "derived.h"

derived::derived(int i) : base(0), iderived(i) 
{
	printf("\033[40;35mderived::derived()\n\033[0m");
}

derived::~derived(void)
{
	printf("\033[40;35mderived::~derived()\n\033[0m");
}

void derived::derived_print(void) const
{
	printf("\033[40;35mderived::derived_print() iderived %d\n\033[0m", this->iderived);
}
