#include <cstdio>

class test {
public:
	test(int = 0);	// default constructor
	void print(void) const;
private:
	int x;
};

test::test(int value) : x(value)
{
	printf("test::test()\n");
}

void test::print(void) const
{
	printf("x = %d\n", x);
	printf("this->x = %d\n", this->x);
	printf("(*this).x = %d\n", (*this).x);
}

int main(int argc, const char *argv[])
{
	test t(20);
	t.print();
	return 0;	
}
