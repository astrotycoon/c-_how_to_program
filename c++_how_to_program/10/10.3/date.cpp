#include <cstdio>
#include "date.h"

date::date(int mn, int dy, int yr)	// default constructor
{
	if (mn > 0 && mn <= 12) {
		this->month = mn;
	} else {
		this->month = 1;
		printf("Invalid month %d set to 1.\n", mn);
	}

	this->year = yr;
	this->day = check_day(dy);

	printf("Date object constructor for date ");
	this->print();
}

date::date(const date &rhs)			// copy constructor
	:	month(rhs.month), day(rhs.day), year(rhs.year)
{
	printf("Date object copy constructor for date ");
	this->print();
}

const date &date::operator = (const date &rhs)	// copy assignment 
{
	if (this == &rhs)	return *this;

	printf("Data object operator = for data\n");
	this->month = rhs.month;
	this->day = rhs.day;
	this->year = rhs.year;

	return *this;	
}

date::~date(void) 
{
	printf("Date object destructor for date ");
	this->print();
}

void date::print(void) const
{
	printf("%d/%d/%d\n", this->month, this->day, this->year);
}

int date::check_day(int dy) const
{
	static const int days_per_month[13] = {
		0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31,
	};	

	if (dy > 0 && dy <= days_per_month[this->month]) {
		return dy;
	}
	
	if (this->month == 2 && dy == 29 && (this->year % 400 == 0 ||
		(this->year % 4 == 0 && this->year % 100 != 0))) {
		return dy;
	}

	printf("Invalid day %d set to 1.\n", dy);
	return 1;
}

