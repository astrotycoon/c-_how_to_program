//	 base
//    / \
// base1 base2
//	  \  /
//   derived	
#include <cstdio>

class base {
	int b;
};

class base1 : virtual public base {
	int b1;
};

class base2 : virtual public base {
	int b2;
};

class derived : public base1, public base2 {
	float d;
};

int main(int argc, const char *argv[])
{
	printf("sizeof(base) = %zu\n", sizeof(base));
	printf("sizeof(base1) = %zu\n", sizeof(base1));
	printf("sizeof(base2) = %zu\n", sizeof(base2));
	printf("sizeof(derived) = %zu\n", sizeof(derived));

	derived obj;
	return 0;	
}
