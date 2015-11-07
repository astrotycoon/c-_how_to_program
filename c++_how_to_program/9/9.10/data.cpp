#include "data.h"

data::data(int y, int m, int d):year(y), month(m), day(d)
{}

void data::print_data(void)
{
	printf("%04d/%02d/%02d\n", year, month, day);
}
