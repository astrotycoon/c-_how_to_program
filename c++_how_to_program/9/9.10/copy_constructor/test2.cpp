#include <iostream>
using namespace std;

class CExample {
public:
	CExample(int val):val_(val) {}
	~CExample() { cout << this->val_ << endl; };
private:
	int val_;
};

int main(int argc, const char *argv[])
{
	CExample A(100);
	CExample B = A;

	return 0;	
}
