#include <cstdio>
#include <typeinfo>

class base {
public:
	base(int base) : ibase(base) {}
	virtual ~base() {}

	int getibase() const { return this->ibase; }
	static int instance_count() { return count; }
	virtual void print() const {};
protected:
	int ibase;
	static int count;
};


int main(int argc, const char *argv[])
{
	base b(10);

	printf("%s\n", typeid(b).name());

	return 0;	
}
