#include <cstdio>	// printf
#include <cstdlib>	// exit abort

#include "create_and_destroy.h"

static void create(void);

create_and_destroy first(1, "(global before main)");

int main(int argc, const char *argv[])
{
	printf("\nMAIN FUNCTION: EXECUTION BEGINS\n");

	create_and_destroy second(2, "(local automatic in main)");	
	static create_and_destroy third(3, "(local static in main)");

//	abort();
//  exit(0);
	create();

	printf("\nMAIN FUNCTION: EXECUTION RESUMS\n");
	create_and_destroy fourth(4, "(local automatic in main)");

	printf("\nMAIN FUNCTION: EXECUTION ENDS\n");

	return 0;	
}

static void create(void)
{
	printf("\nCREATE FUNCTION: EXECUTION BEGINS\n");
	create_and_destroy fifth(5, "(local automatic in create)");
	static create_and_destroy sixth(6, "(local static in create)");
	create_and_destroy seventh(7, "(local automatic in create)");
	printf("\nCREATE FUNCTION: EXECUTION ENDS\n");
}

// 1 -> 2 -> 3 -> 5 -> 6 -> 7 -> 7 -> 5 -> 4 -> 4 -> 2 -> 6 -> 3 -> 1

// exit()和abort()函数对析构函数的影响
//	1. 调用exit函数后，局部对象的析构函数不会调用，但是静态对象（包括全局和局部静态对象）的析构函数依然会调用
// 	2. 调用abort函数后，程序直接退出，不会调用任何析构函数
//  3. main函数调用return返回退出，不会影响任何对象的析构函数的调用

