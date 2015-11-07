#include <cstdio>

class human {	// 抽象类 abstract class -- 不能创建抽象类的对象
public:
//	human() { printf("human constructor\n"); }
//	~human() { printf("destroy human class\n"); }
	virtual ~human() { printf("destroy human class\n"); }
};


class student : public human {
public:
//	student() { printf("student constructor\n"); }
	~student() { printf("destroy student class\n"); }
//	virtual ~student() { printf("destroy student class\n"); }
};

int main(int argc, const char *argv[])
{
	// 没咋看懂反汇编
//	printf("sizeof(human) = %zu\n", sizeof(human));
//	printf("sizeof(student) = %zu\n", sizeof(student));
	human *ph = NULL;
#if 0
	ph = new student; 
	delete ph;
#else
	student st;
	ph = &st;
#endif

	return 0;
}
