#include <cstdio>

class base1 {
public:
	virtual void f(void) { printf("base1::f()\n"); }
};

class base2 {
public:
	virtual void g(void) { printf("base2::g()\n"); }
};

class derived : public base1, public base2 {
public:
	virtual void f(void) { printf("derived::f()\n"); } 
	virtual void g(void) { printf("derived::g()\n"); } 
	virtual void h(void) { printf("derived::h()\n"); } 
};

int main(int argc, const char *argv[])
{
	derived ins;
	base1 &b1 = ins;
	base2 &b2 = ins;
	derived &d = ins;

	b1.f();
	b2.g();
	d.f();
	d.g();
	d.h();

	return 0;	
}
