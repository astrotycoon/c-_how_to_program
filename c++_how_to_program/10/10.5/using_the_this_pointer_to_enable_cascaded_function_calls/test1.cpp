#include <cstdio>
#include "time.h"

int main(int argc, const char *argv[])
{
	time t;

	t.set_hour(18).set_minute(30).set_second(22);	

	t.print_universal();
	t.print_standard();	

	t.set_time(20, 20, 20).print_standard();

	return 0;	
}
