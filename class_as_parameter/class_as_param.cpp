#include <cstdio>
#include <cstring>

class Ctest {
public:
	int one;
	int two;
	char c[32];
};

void show_test(Ctest test)
{
	printf("%d %d %s\n", test.one, test.two, test.c);
}

int main(int argc, const char *argv[])
{
	Ctest test;
	test.one = 1;
	test.two = 2;
	strcpy(test.c, "linux");
	show_test(test);

	return 0;	
}
