#include <iostream>
using std::cout;
using std::endl;

#include <iomanip>
using std::setfill;
using std::setw;

#include "time.h"

time::time(int h, int m, int s)
{
	set_time(h, m, s);
}

#if 0
time::~time()
{
}
#endif

void time::set_time(int h, int m, int s)
{
	set_hour(h);
	set_minute(m);
	set_second(s);
}

void time::set_hour(int h)
{
	hour = ( h >= 0 && h < 24 ) ? h : 0;
}

void time::set_minute(int m)
{
	minute = ( m >= 0 && m < 60 ) ? m : 0; 
}

void time::set_second(int s)
{
	second = ( s >= 0 && s < 60 ) ? s : 0;	
}

int time::get_hour(void)
{
	return hour;
}

int time::get_minute(void)
{
	return minute;
}

int time::get_second(void)
{
	return second;
}

void time::print_universal(void)
{
	cout << setfill('0') << setw(2) << get_hour() << ":"
		<< setw(2) << get_minute() << ":" << setw(2) << get_second() << endl;
}

void time::print_standard(void)
{
	cout << setfill('0') << setw(2) << ((get_hour() == 0 || get_hour() == 12) ? 12 : get_hour() % 12) << ":"
		<< setw(2) << get_minute() << ":" << setw(2) 
		<< get_second() << (get_hour() < 12 ? " AM": " PM") << endl;
}
