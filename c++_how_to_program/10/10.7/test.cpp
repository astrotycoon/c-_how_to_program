#include <stdio.h>

#include "employee.h"

int main(int argc, const char *argv[])
{
	printf("Number of employees before instantiation of any objects is %d\n", employee::get_count());
	
	employee *e1ptr = new employee("Susan", "Baker");
	employee *e2ptr = new employee("Robert", "Jones");

	printf("Number of employees after objects are instantiated is %d\n\n", e1ptr->get_count());

	printf("Employee1: %s %s\n", e1ptr->get_first_name(), e1ptr->get_last_name());
	printf("Employee2: %s %s\n\n", e2ptr->get_first_name(), e2ptr->get_last_name());

	delete e1ptr; e1ptr = NULL;
	delete e2ptr; e2ptr = NULL;

	printf("Number of employees after objects are deleted is %d\n", employee::get_count());

	return 0;	
}
