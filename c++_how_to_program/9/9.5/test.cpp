#include <stdio.h>
#include <stdlib.h>

#include "sales_person.h"

int main(int argc, const char *argv[])
{
	sales_person s;

	s.get_sales_from_user();
	s.print_annual_sales();

	exit(EXIT_SUCCESS);
}
