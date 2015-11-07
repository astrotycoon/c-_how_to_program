#include <iostream>
using namespace std;

class CExample {
public:
	// constructor
	CExample(int a) 
	{
		pint = new int[5];
		for (int i = 0; i < 5; i++) {
			pint[i] = a;
		}
	}
	// destructor
	~CExample() { delete [] pint; };

	void show() 
	{ 
		for (int i = 0; i < 5; i++) {
			cout << pint[i] << endl;
		}
	}

private:
	int *pint;
};

int main(int argc, const char *argv[])
{
	CExample A(100);
	A.show();

	CExample B = A;
	B.show();

	return 0;	
}
