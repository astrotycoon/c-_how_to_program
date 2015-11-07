#include <cstdio>

class human {	// 抽象类 abstract class -- 不能创建抽象类的对象
public:
	virtual void buy_ticket(void) = 0;	// 纯虚函数
};

class teacher : public human {
public:
	virtual void buy_ticket(void)
	{
		printf("teacher buy ticket\n");
	}
};

class student : public human {
public:
	virtual void buy_ticket(void)
	{
		printf("student buy ticket\n");
	}
};

int main(int argc, const char *argv[])
{
	teacher te;
	student st;

//	human hu;	// wrong

	human *p1 = &te;
	human *p2 = &st;

	p1->buy_ticket();
	p2->buy_ticket();

	return 0;
}
