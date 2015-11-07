#include <cstdio>
#include <typeinfo>
#include <cxxabi.h>

using namespace std;
using namespace __cxxabiv1;

struct base {};
struct derived : base {};
struct poly_base { virtual void member() {} };
struct poly_derived : poly_base {};

#define get_realname(n)	\
	__cxxabiv1::__cxa_demangle(typeid(n).name(), 0, 0, 0)	\

int main(int argc, const char *argv[])
{
	// built-in type
	int i = 100;
	int *pi = &i;

	printf("int has type: %s\n", get_realname(int));
	printf("i has type is: %s\n", get_realname(i));
	printf("pi has type is: %s\n", get_realname(pi));
	printf("*pi has type is: %s\n", get_realname(*pi));

	printf("\n");

	derived d;
	base *pb = &d;
	printf("derived has type: %s, d has type %s\n", get_realname(derived), get_realname(d));
	printf("*pb is: %s\n", get_realname(*pb));
	printf("same type: %d\n", typeid(derived) == typeid(*pb));

	printf("\n");

	return 0;	
}
