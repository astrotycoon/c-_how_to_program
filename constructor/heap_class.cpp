#include <cstdio>
#include <cstdlib>

class CNumber {
public:
	CNumber()
	{
		this->number = 1;
	}
public:
	int number;
};

int main(int argc, const char *argv[])
{
	CNumber *pNumber = new CNumber;
//	CNumber *pNumber = (CNumber *)malloc(sizeof(CNumber));
//	pNumber->number = 2;
	printf("pNumber->number = %d\n", pNumber->number);

	return 0;	
}
