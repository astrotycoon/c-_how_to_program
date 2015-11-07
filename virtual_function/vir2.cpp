#include <cstdio>
#include <cstdlib>
#include <typeinfo>
#include <cxxabi.h>

using namespace std;
using namespace __cxxabiv1;	// __cxa_demangle

// 单继承，无覆盖
class base {
public:
	virtual void f(void) { printf("base::f()\n"); }
	virtual void g(void) { printf("base::g()\n"); }
	virtual void h(void) { printf("base::h()\n"); }
};

// vptr -> f g h

class derived : public base {
public:
	virtual void f1(void) { printf("derived::f1()\n"); }
	virtual void g1(void) { printf("derived::g1()\n"); }
	virtual void h1(void) { printf("derived::h1()\n"); }
};
// vptr -> f g h f1 g1 h1

typedef void (*pf)(void);

int main(int argc, const char *argv[])
{
	printf("%zu %zu\n", sizeof(base), sizeof(derived));

	char *realname;

	derived d;

	d.f();
	d.g();
	d.h();
	d.f1();
	d.g1();
	d.h1();

	printf("\n");

	((pf)*(*(int **)&d + 0))();
	((pf)*(*(int **)&d + 1))();
	((pf)*(*(int **)&d + 2))();
	((pf)*(*(int **)&d + 3))();
	((pf)*(*(int **)&d + 4))();
	((pf)*(*(int **)&d + 5))();

	printf("\n");
	
	realname = __cxa_demangle(((type_info *)*(*(int **)&d - 1))->name(), NULL, NULL, NULL);
	printf("typeid(d).name() = %s, %s\n", typeid(d).name(), realname);
	free(realname);

	base *pd = &d;

	pd->f();
	pd->g();
	pd->h();
//	pd->f1();	// ??
//	pd->g1();	// ??
//	pd->h1();	// ??
	realname = __cxa_demangle(((type_info *)*(*(int **)pd - 1))->name(), NULL, NULL, NULL);
	printf("pd has type %s\n", realname);
	free(realname);

	return 0;	
}

