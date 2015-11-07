#include <cstdio>
#include <cstring>
#include "employee.h"

// define and initialize static date menber at file scope
// It is a compilation error to include keyword static in the definition of a static data members at file scope.
// static int employee::count = 0;
int employee::count = 0;

employee::employee(const char *const first, const char *const last)
{
	size_t len = strlen(first); 	
	this->first_name = new char[len + 1];
	strncpy(this->first_name, first, len + 1);

	len = strlen(last);
	this->last_name = new char[len + 1];
	strncpy(this->last_name, last, len + 1);

	++this->count;	// ??? this

	printf("Employee constructor for %s %s called.\n", this->first_name, this->last_name);
}

employee::~employee(void)
{
	printf("~employee() called for %s %s\n", this->first_name, this->last_name);
	delete [] this->first_name;
	delete [] this->last_name;

	--this->count;	// ??? this
}

const char *employee::get_first_name(void) const
{
	return this->first_name;
}

const char *employee::get_last_name(void) const
{
	return this->last_name;
}

int employee::get_count(void) 
{
	// ‘this’ is unavailable for static member functions
	// return this->count;
	return count;
}

