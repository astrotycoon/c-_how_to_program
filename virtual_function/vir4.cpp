#include <cstdio>
#include <cstdlib>
#include <typeinfo>
#include <cxxabi.h>

using namespace std;
using namespace __cxxabiv1;

#define get_realname(n)	\
	__cxa_demangle((n), NULL, NULL, NULL)

// 多继承 无覆盖
class base1 {
public:
	virtual void f(void) { printf("base1::f()\n"); }
	virtual void g(void) { printf("base1::g()\n"); }
	virtual void h(void) { printf("base1::h()\n"); }
};

class base2 {
public:
	virtual void f(void) { printf("base2::f()\n"); }
	virtual void g(void) { printf("base2::g()\n"); }
	virtual void h(void) { printf("base2::h()\n"); }
};

class base3 {
public:
	virtual void f(void) { printf("base3::f()\n"); }
	virtual void g(void) { printf("base3::g()\n"); }
	virtual void h(void) { printf("base3::h()\n"); }
};

class derived : public base1, public base2, public base3 {
public:
	virtual void f1(void) { printf("derived::f1()\n"); }
	virtual void g1(void) { printf("derived::g1()\n"); }
	virtual void h1(void) { printf("derived::h1()\n"); }
};

typedef void (*pf)(void);

int main(int argc, const char *argv[])
{
	printf("sizeof(derived) = %zu\n\n", sizeof(derived));	// 12

	char *realname1 = NULL, *realname2 = NULL;
	base1 b1;
	base2 b2;
	base3 b3;
	derived d;
	base1 *pb1 = &d;
	base2 *pb2 = &d;
	base3 *pb3 = &d;

	printf("b1: %s\n", typeid(b1).name());
	printf("b2: %s\n", typeid(b2).name());
	printf("b3: %s\n", typeid(b3).name());
	printf(" d: %s\n", typeid(d).name());
	
#if 0
	realname1 = get_realname(typeid(b1).name());
	realname2 = get_realname(((type_info *)*(*(int **)&b1 - 1))->name());
	printf("b1 has type %s, %s\n", realname1, realname2);
	free(realname1);
	free(realname2);
#endif

	((pf)*(*((int **)&d + 0) + 0))();
	((pf)*(*((int **)&d + 0) + 1))();
	((pf)*(*((int **)&d + 0) + 2))();
	((pf)*(*((int **)&d + 0) + 3))();
	((pf)*(*((int **)&d + 0) + 4))();
	((pf)*(*((int **)&d + 0) + 5))();

	printf("\n");

	((pf)*(*((int **)&d + 1) + 0))();
	((pf)*(*((int **)&d + 1) + 1))();
	((pf)*(*((int **)&d + 1) + 2))();

	printf("\n");

	((pf)*(*((int **)&d + 2) + 0))();
	((pf)*(*((int **)&d + 2) + 1))();
	((pf)*(*((int **)&d + 2) + 2))();

	printf("\n");
//	d.f(); 	// ambiguous
//	d.g(); 	// ambiguous
//	d.h(); 	// ambiguous
	d.f1();
	d.g1();
	d.h1();

	printf("\n");

	printf("*pb1: %s\n", realname1 = get_realname(typeid(*pb1).name()));
	printf("*pb2: %s\n", realname1 = get_realname(typeid(*pb2).name()));
	printf("*pb3: %s\n", realname1 = get_realname(typeid(*pb3).name()));

	printf("\n");
	pb1->f();
	pb1->g();
	pb1->h();
//	pb1->f1(); 
	pb2->f();
	pb2->g();
	pb2->h();
	pb3->f();
	pb3->g();
	pb3->h();

	return 0;
}
