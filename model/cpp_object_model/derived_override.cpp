#include <cstdio>
#include "derived_override.h"

derived_override::derived_override(int i) : base(0), iderived(i)
{
	printf("\033[40;35mderived_override::derived_override()\n\033[0m");
}

derived_override::~derived_override(void)
{
	printf("\033[40;35mderived_override::~derived_override()\n\033[0m");
}

void derived_override::print(void) const
{
	printf("\033[40;35mderived_override::print(), iderived %d\n\033[0m", this->iderived);
}
