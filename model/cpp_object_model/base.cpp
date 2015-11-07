#include <cstdio>
#include "base.h"

// 初始化静态数据成员
int base::icount = 0;
// 静态方法 
int base::get_icount(void)
{
	printf("\033[40;35mbase::get_icount()\t\ticount地址: %p\n\033[0m", &icount);
	return icount;
}

base::base(int i) : ibase(i)
{
	icount++;
	printf("\033[40;35mbase::base()\n\033[0m");
}

base::~base(void)
{
	printf("\033[40;35mbase::~base()\n\033[0m");
}

int base::get_ibase(void) const
{
	printf("\033[40;35m实际ibase地址: %p\n\033[0m", &this->ibase);
	return this->ibase;
}

void base::print(void) const
{
	printf("\033[40;35mbase::print(), ibase %d\n\033[0m", this->ibase);
}
