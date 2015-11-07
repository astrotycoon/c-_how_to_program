#include <cstdio>
#include "time.h"

int main(int argc, const char *argv[])
{
	time wake_up(6, 45, 0);		// non-constant object
	const time noon(12, 0, 0);	// constant object

	wake_up.set_hour(18);
//	noon.set_hour(12); 	// error (const -> non const is not allowed)

	wake_up.get_second(); 	// non const version
	noon.get_second(); 		// const version

	wake_up.print_standard();
	noon.print_standard();

	return 0;	
}
