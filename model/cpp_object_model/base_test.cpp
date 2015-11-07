#include "base.h"
#include <cstdio>

typedef void (*pf)(base *);

int main(int argc, const char *argv[])
{
#if 0
	base *pb = new base(100);	

	pb->print();

//	b1.print();
//	((pf)*(*(int **)&b1 + 2))(&b1);
	
	((void (*)(base *))*(*(int **)pb + 0))(pb);
	((void (*)(base *))*(*(int **)pb + 2))(pb);
	((void (*)(base *))*(*(int **)pb + 1))(pb); 	// ?? 释放了pb指针

	delete pb;	// 会dump
#else 
	base b1(100);

	printf("%p %p %p\n", (void *)*(*(int **)&b1 + 0), (void *)*(*(int **)&b1 + 1), (void *)*(*(int **)&b1 + 2));
	// vptr ->: [0] -> [D1]
	//				-> [D0]
	// 				-> [print]
#endif

	return 0;
}
