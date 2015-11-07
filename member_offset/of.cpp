#include <iostream>
using namespace std;
#include <stdio.h>
#include <stddef.h>

class A {
public:
public:
	int var1;
	int var2;	
};

int main(int argc, const char *argv[])
{
 	A a;
	cout << "&a = " << &a << endl;
	cout << "sizeof(a) = " << sizeof(a) << endl;
	cout << "&a.var1 = " << &a.var1 << endl;
	cout << "&A::var1 = " << &A::var1 << endl;
	cout << "&A::var2 = " << &A::var2 << endl;
	cout << "&A::var1 = " << offsetof(A, var1) << endl;
	cout << "&A::var2 = " << offsetof(A, var2) << endl;
	printf("&A::var1 = %d\n", &A::var1);
	printf("&A::var2 = %d\n", &A::var2);

	int A::* pA = NULL;
	cout << "pA = " << pA << endl;
	printf("pA = %p\n", pA);
	pA = &A::var1;
	cout << "pA = " << pA << endl;
	printf("pA = %p\n", pA);

	return 0;
}
