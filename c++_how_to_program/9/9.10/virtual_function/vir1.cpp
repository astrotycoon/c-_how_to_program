#include <cstdio>

class human {
public:
	virtual void buy_ticket(void)
	{
		printf("human buy ticket\n");
	}
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
	human hu;

	printf("sizeof(teacher) = %zu\n", sizeof(teacher));
	printf("sizeof(student) = %zu\n", sizeof(student));

	human *p1 = &te;
	human *p2 = &st;

	p1->buy_ticket();
	p2->buy_ticket();

	return 0;
}
