#include <iostream>
using std::cout;
using std::cin;
using std::endl;
using std::fixed;

#include <iomanip>
using std::setprecision;

#include "sales_person.h"

sales_person::sales_person()
{
#if 0
	for (int i; i < 12; i++) {
		sales[i] = 0.0;
	}
#endif
}

sales_person::~sales_person()
{}

void sales_person::get_sales_from_user()
{
	double sales_figure;

	for (int i = 1; i <= 12; i++) {
		cout << "Enter slaes amount for month " << i << ": ";
		cin >> sales_figure;
		set_sales(i, sales_figure);
	}
}

void sales_person::set_sales(int month, double amount)
{
	if (month >= 1 && month <= 12 && amount > 0.0) {
		sales[month] = amount;
	} else {
		cout << "Invalid month or sales figure" << endl;
	}
}

void sales_person::print_annual_sales()
{
	cout << setprecision(2) << fixed 
		<< "\nThe total annual sales are: $" 
		<< totoal_annual_sales() << endl;
}

double sales_person::totoal_annual_sales()
{
	double total = 0.0;

	for (int i = 0; i < 12; i++) {
		total += sales[i];
	}

	return total;
}
