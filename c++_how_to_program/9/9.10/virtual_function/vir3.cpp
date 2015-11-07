#include <cstdio>

class human {
public:
	~human() { printf("destroy human class\n"); }
};


class student : public human {
public:
	~student() { printf("destroy student class\n"); }
};

int main(int argc, const char *argv[])
{
	human *ph = new student;
	delete ph;
	return 0;
}
