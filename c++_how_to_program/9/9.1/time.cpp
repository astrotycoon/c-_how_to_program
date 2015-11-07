#include <iostream>
using std::cout;
using std::endl;

#include <iomanip>
using std::setfill;
using std::setw;

#include "time.h"

time::time()
{
	hour = minute = second = 0;
}

void time::set_time(int h, int m, int s)
{
	hour = (h >= 0 && h < 24) ? h : 0;
	minute = (m >= 0 && m < 60) ? m : 0;
	second = (s >= 0 && m < 60) ? s : 0;
}

void time::print_universal()
{
	cout << setfill('0') << setw(2) << hour << ":"
		<< setw(2) << minute << ":" << setw(2) << second << endl;
#if 0
	int hour = 10;
	cout << "block scope hour = " << hour << " class scope hour = " << this->hour << " " << time::hour << endl; 
#endif
}

void time::print_standard()
{
	cout << setfill('0') << setw(2) << ((hour == 0 || hour == 12) ? 12 : hour % 12) << ":"
		<< setw(2) << minute << ":" << setw(2) 
		<< second << (hour < 12 ? " AM": " PM") << endl;
}
