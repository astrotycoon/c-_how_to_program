#include <cstdio>
#include "time.h" 

int main(int argc, const char *argv[])
{
	time t;
	t.set_time(1, 2, 3);
	t.print_time();
	
	return 0;
}
