#include <cstdio>
#include <iostream>
using namespace std;

class base {
public:
	static void get_count(void);
private:
	static int count;
};

int base::count = 0;
void base::get_count(void)
{
	printf("get_count\n");
}

int main(void)
{
	base b1;
	cout << (void *)(b1.get_count) << endl;

	return 0;
}
