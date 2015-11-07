#include <cstdio>
#include <iostream>
#include <iomanip>

using namespace std;

#include "time.h"

time::time(int h, int m, int s) 
{
	this->set_time(h, m, s);
}

time::~time(void) 
{
	printf("time::~time()\n");
}

void time::set_time(int h, int m, int s)
{
	this->set_hour(h);
	this->set_minute(m);
	this->set_second(s);
}

void time::set_hour(int h)
{
	this->hour = (h >= 0 && h < 24) ? h : 0;
}

void time::set_minute(int m)
{
	this->minute = (m >= 0 && m < 60) ? m : 0;
}

void time::set_second(int s)
{
	this->second = (s >= 0 && s < 60) ? s : 0;
}

int time::get_hour(void) const
{
	return this->hour;
}

int time::get_minute(void) const 
{
	return this->minute;
}

int time::get_second(void) const
{
	return this->second;
}

int time::get_second(void) 
{
	return this->second;
}

void time::print_universal(void) const
{
#if 1
	cout << setfill('0') << setw(2) << this->hour << ":"
		 << setw(2) << this->minute << ":" << setw(2) << this->second << endl;
#else
	printf("%02d:%02d:%02d\n", this->hour, this->minute, this->second);
#endif
}

void time::print_standard(void) const 
{
#if 1
	cout << ((hour == 0 || hour == 12) ? 12 : hour % 12) << ":" << setfill('0')
		 << setw(2) << this->minute << ":" << setw(2) << this->second << ((this->hour < 12) ? "AM" : "PM") << endl; 
#else
	printf("%d:%02d:%02d%s\n", (hour == 0 || hour == 12) ? 12 : hour % 12, 
			this->minute, this->second, (this->hour < 12) ? "AM" : "PM");
#endif
}

