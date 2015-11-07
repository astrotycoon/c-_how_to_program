#include <cstdio>
#include <cstring>
#include "employee.h"

employee::employee(const char *const first, const char *const last, 
					const date &birth, const date &hire)
//	:	birth_date(birth), hire_date(hire) 	// member initializer list
{
	size_t len = strlen(first); 
	len = len < 25 ? len : 24;
	strncpy(this->first_name, first, len);
	this->first_name[len] = '\0';

	len = strlen(last);
	len = len < 25 ? len : 24;
	strncpy(this->last_name, last, len);
	this->last_name[len] = '\0';

	this->birth_date = birth;
	this->hire_date = hire;

	printf("Employee object constructor: %s %s\n", this->first_name, this->last_name);
}

employee::~employee(void)
{
	printf("Employee object destructor: %s, %s\n", this->last_name, this->first_name);
}

void employee::print(void) const
{
	printf("%s, %s Hired: ", this->last_name, this->first_name);
	this->hire_date.print();
	printf(" Birthday: ");
	this->birth_date.print();
	printf("\n");
}
