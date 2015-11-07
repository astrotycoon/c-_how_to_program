#include <cstdio>
#include <typeinfo>
#include <cxxabi.h>

using namespace std;

class base {
public:
	virtual void f(void) { printf("base::f()\n"); }
	virtual void g(void) { printf("base::g()\n"); }
	virtual void h(void) { printf("base::h()\n"); }
};

using namespace __cxxabiv1;
#define get_realname(n)	\
	__cxxabiv1::__cxa_demangle(typeid(n).name(), 0, 0, 0)	\

typedef void (*pf)(void);

int main(int argc, const char *argv[])
{
	printf("%zu\n", sizeof(base));

	base d;

	printf("\n");

	((pf)*(*(int **)&d + 0))();
	((pf)*(*(int **)&d + 1))();
	((pf)*(*(int **)&d + 2))();

	printf("\n");

	((pf)*(int *)(*(int *)&d + 0))();
	((pf)*(int *)(*(int *)&d + 4))();
	((pf)*(int *)(*(int *)&d + 8))();

	printf("\n");

	printf("type: %s\n", __cxa_demangle(((type_info *)*(*(int **)&d - 1))->name(), 0, 0, 0));

	return 0;	
}
