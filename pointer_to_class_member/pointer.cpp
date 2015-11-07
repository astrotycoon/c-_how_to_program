#include <iostream>
using namespace std;

class student {
public:
	student(int scode)
	{
		this->math = scode;
		this->english = scode;
	}

	void show(void)
	{
		cout << "this->math = " << this->math << endl;
		cout << "this->english = " << this->english << endl;
		cout << "this->chinese = " << this->chinese << endl;
	}

public:
	int math;
	int english;
	static int chinese;
};

int student::chinese = 100;

int main(int argc, char *argv[])
{
	student astrol;

	int student:: *pm = NULL;
	pm = &student::math;
	astrol.*pm = 50;

	int student:: *pe = NULL;
	pe = &student::english;
	astrol.*pe = 60;

	int *pc = &student::chinese;
	*pc = 70;
//	cout << "sizeof(pm) = " << sizeof(pm) << endl;
//	cout << "sizeof(pc) = " << sizeof(pc) << endl;

	astrol.show();

	return 0;
}
