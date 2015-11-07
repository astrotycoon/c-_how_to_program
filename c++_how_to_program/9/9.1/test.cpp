#include "time.h"
#include <cstdio>

int name = 10;
int main(int argc, const char *argv[])
{
	time sunset;
	time array_of_times[5];
	time &dinner_time = sunset;
	time *time_ptr = &dinner_time;

	sunset.print_universal();

	return 0;	
}
