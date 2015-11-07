#include <cstdio>
#include "time.h"

time::time()
{
	this->hour = this->minute = this->second = 0;
}

void time::set_time(int h, int m, int s)
{
	this->hour = h;
	this->minute = m;
	this->second = s;	
}

void time::print_time(void)
{
	printf("%d %d %d\n", this->hour, this->minute, this->second);
}
