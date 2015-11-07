#include <iostream>
using namespace std;

class CExample {
public:
	CExample(int b):a(b) {}
	void show() { cout << a << endl; }
private:
	int a;
// disable copy constructor
//	CExample(const CExample &);
};

int main(int argc, const char *argv[])
{
	CExample A(100);
	CExample B = A;
	B.show();
	return 0;	
}
