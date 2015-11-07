#include <cstdio>
#include <cxxabi.h>
#include <typeinfo>

using std::type_info;

// 单继承，有覆盖
class base {
public:
	virtual void f(void) { printf("base::f()\n"); }
	virtual void g(void) { printf("base::g()\n"); }
	virtual void h(void) { printf("base::h()\n"); }
};

// vptr -> f g h

class derived : public base {
public:
	virtual void f(void) { printf("derived::f()\n"); }
	virtual void g1(void) { printf("derived::g1()\n"); }
	virtual void h1(void) { printf("derived::h1()\n"); }
};
// vptr -> f g h 

typedef void (*pf)(void);

using namespace __cxxabiv1;
#define get_realname(n)	\
	__cxxabiv1::__cxa_demangle(typeid(n).name(), 0, 0, 0)	\
	

int main(int argc, const char *argv[])
{
	printf("%zu %zu\n", sizeof(base), sizeof(derived));

	base b;
	derived d;
	base *p;

	printf("b: %s\n", get_realname(b));
	printf("d: %s\n", get_realname(d));
	printf("p: %s\n", get_realname(p));
//	printf("*p: %s\n", get_realname(*p)); // must initialize pointer

	b.f(); 	// base::f()
	b.g(); 	// base::g()
	b.h(); 	// base::h()

	printf("\n");

	d.f(); 	// derived::f()
	d.g(); 	// base::g()
	d.h(); 	// base::h()
	d.g1(); // derived::g1()
	d.h1(); // derived::h1()

	printf("\n");

	((pf)*(*(int **)&d + 0))();
	((pf)*(*(int **)&d + 1))();
	((pf)*(*(int **)&d + 2))();
	((pf)*(*(int **)&d + 3))();
	((pf)*(*(int **)&d + 4))();

	printf("\n");

	p = &b;
	p->f();
	p->g();
	p->h();
	printf("p: %s\n", get_realname(p));
	printf("*p: %s\n", get_realname(*p));
	printf("*p: %s\n", __cxa_demangle(((type_info *)*(*(int **)p - 1))->name(), NULL, NULL, NULL));

	printf("\n");

	p = &d;
	p->f();
	p->g();
	p->h();
//	p->g1(); 	// ??
//	p->h1(); 	// ??
	printf("p: %s\n", get_realname(p));
	printf("*p: %s\n", get_realname(*p));
	printf("*p: %s\n", __cxa_demangle(((type_info *)*(*(int **)p - 1))->name(), NULL, NULL, NULL));

	return 0;	
}

