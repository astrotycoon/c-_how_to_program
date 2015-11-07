#include "base.h"

#include <iostream>
using namespace std;

typedef void (*pf)(base *);

int main(int argc, const char *argv[])
{
	base b1(100);	

	b1.print();
	((pf)*(*(int **)&b1 + 2))(&b1);

	cout << &(base::get_icount) << endl;

	return 0;
}
