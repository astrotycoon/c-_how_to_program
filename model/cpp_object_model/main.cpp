#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <typeinfo>
#include <cxxabi.h>

#include "base.h"
#include "derived.h"
#include "derived_override.h"
#include "derived_multip_inherit.h"
#include "derived_virtual_inherit1.h"

using namespace std;
using namespace abi;

static void test_base_model(void);
static void test_single_inherit_norewrite(void);
static void test_single_inherit_rewrite(void);
static void test_multip_inherit(void);
static void test_single_virtual_inherit(void);
static void test_multip_virtual_inherit(void);

int main(int argc, const char *argv[])
{
	while (1) {
		cout << "\033[40;32mC++对象模型测试程序，请输入对应的测试号：(输入0退出)\033[0m\n";
		cout << "\033[40;32m\t1.测试基本对象模型\033[0m\n";
		cout << "\033[40;32m\t2.测试单继承对象模型（【无】重写函数）\033[0m\n";
		cout << "\033[40;32m\t3.测试单继承对象模型（【有】重写函数）\033[0m\n";
		cout << "\033[40;32m\t4.测试多继承对象模型\033[0m\n";
		cout << "\033[40;32m\t5.测试单一虚继承对象模型\033[0m\n";
		cout << "\033[40;32m\t6.测试菱形重复虚继承对象模型\033[0m\n";

		int test_no;
		cout << "\033[40;35m请输入: \033[0m";
		cin >> test_no;
		cout << "\033[40;35m你选择的测试号是: " << test_no << "\033[0m"<< endl;

		switch (test_no) {
			case 0:	// 0. 退出
				exit(EXIT_SUCCESS);
				break;
			case 1:	// 1. 测试基本对象模型
				test_base_model();
				break;
			case 2: // 2. 测试单继承对象模型（【无】重写函数）
				test_single_inherit_norewrite();
				break;
			case 3:	// 3. 测试单继承对象模型（【有】重写函数）
				test_single_inherit_rewrite();
				break;
			case 4:	// 4. 测试多继承对象模型 
				test_multip_inherit();
				break;
			case 5:	// 5. 测试单一虚继承对象模型
				test_single_virtual_inherit();
				break;
			case 6:	// 6. 测试菱形重复虚继承对象模型
				test_multip_virtual_inherit();
				break;
			default:
				cout << "\033[40;35m输入测试号错误!\033[0m" << endl;
				break;
		}
	}	

	exit(EXIT_SUCCESS);
}

static void test_base_model(void)
{
	base b1(1000);
	char *realname = NULL;

	printf("\033[40;35m对象b1的大小: %zu\n\033[0m", sizeof(b1));
	printf("\033[40;35m对象b1的起始内存地址: %p\n\033[0m", &b1);
	printf("\033[40;35mtype_info信息: %p\n\033[0m", (void *)*(*(int **)&b1 - 1));
	realname = __cxa_demangle(((type_info *)*(*(int **)&b1 - 1))->name(), NULL, NULL, NULL);
	printf("\033[40;35m%s\n\033[0m", realname);
	free(realname);
	printf("\033[40;35m虚函数表地址: \t\t\t%p\n\033[0m", *(int **)&b1);
	printf("\033[40;35m虚函数表 — 第1个函数地址:\t%p\t析构函数1地址: %p\n\033[0m", *(int **)&b1 + 0, (void *)*(*(int **)&b1 + 0));
//	((void (*)(base *))*(*(int **)&b1 + 0))(&b1);
//	((void (*)(base *))*(*(int **)&b1 + 1))(&b1);
//	((void (*)(base *))*(*(int **)&b1 + 2))(&b1);
	printf("\033[40;35m虚函数表 - 第2个函数地址:\t%p\t析构函数2地址: %p\n\033[0m", *(int **)&b1 + 1, (void *)*(*(int **)&b1 + 1));
	printf("\033[40;35m虚函数表 - 第3个函数地址:\t%p\t", *(int **)&b1 + 2);
	typedef void (*pf)(base *);	/* base *相当于this指针 */
	((pf)*(*(int **)&b1 + 2))(&b1); 	// vtbl[0] -- ~base[D1]  vtbl[1] -- ~base[D0]  vtbl[2] -- print
	b1.print();
	printf("\033[40;35m\n\033[0m");
	printf("\033[40;35m推测数据成员iBase地址: \t\t%p\t通过地址取值iBase的值: %d\n\033[0m", (int *)&b1 + 1, *((int *)&b1 + 1));
	printf("\033[40;35mbase::get_ibase(): %d\n\033[0m", b1.get_ibase());

	b1.get_icount();
	printf("\033[40;35m静态函数get_icount地址: %p\n\033[0m", (void *)&base::get_icount);
}
// 根据C++对象模型，实例化对象b1的前4个字节，即虚函数表地址 
// 		1. 虚函数表中第1个函数和第2个函数都是析构函数地址（尽管地址不同）;
//  	2. 虚函数表中第3个函数是虚函数print()的地址，通过函数指针可以调用，进行验证;
//  	3. 推测数据成员ibase的地址，为(int *)&b1 + 1;
//  	4. 静态数据成员和静态函数所在的内存地址，与对象数据成员和函数成员位置不一样

static void test_single_inherit_norewrite(void)
{
	derived d(9999);
	char *realname = NULL;

	printf("\033[40;35m对象d的大小: %zu\n\033[0m", sizeof(d));
	printf("\033[40;35m对象d的起始内存地址: %p\n\033[0m", &d);
	printf("\033[40;35mtype_info信息: %p\n\033[0m", (void *)*(*(int **)&d - 1));
	realname = __cxa_demangle(((type_info *)*(*(int **)&d - 1))->name(), NULL, NULL, NULL);
	printf("\033[40;35m%s\n\033[0m", realname);
	free(realname);
	printf("\033[40;35m虚函数表地址: \t\t\t%p\n\033[0m", *(int **)&d);
	printf("\033[40;35m虚函数表 — 第1个函数地址:\t%p\t析构函数1地址: %p\n\033[0m", *(int **)&d + 0, (void *)*(*(int **)&d + 0));
	printf("\033[40;35m虚函数表 — 第2个函数地址:\t%p\t析构函数2地址: %p\n\033[0m", *(int **)&d + 1, (void *)*(*(int **)&d + 1));
	printf("\033[40;35m虚函数表 — 第3个函数地址:\t%p\t", *(int **)&d + 2);
	((void (*)(derived *))*(*(int **)&d + 2))(&d);	// base print
	d.print();
	printf("\033[40;35m虚函数表 — 第4个函数地址:\t%p\t", *(int **)&d + 3);
	((void (*)(derived *))*(*(int **)&d + 3))(&d);	// derived print
	d.derived_print();
	printf("\033[40;35m\n\033[0m");
	
	printf("\033[40;35m推测数据成员ibase地址: \t\t%p\t通过地址取得的值: %d\n\033[0m", (int *)&d + 1, *((int *)&d + 1));	
	printf("\033[40;35m推测数据成员iderived地址: \t%p\t通过地址取得的值: %d\n\033[0m", (int *)&d + 2, *((int *)&d + 2));
}

static void test_single_inherit_rewrite(void)
{
	derived_override d(111111);
	char *realname = NULL;

	printf("\033[40;35m对象d的大小: %zu\n\033[0m", sizeof(d));
	printf("\033[40;35m对象d的起始内存地址: %p\n\033[0m", &d);
	printf("\033[40;35mtype_info信息: %p\n\033[0m", (void *)*(*(int **)&d - 1));
	realname = __cxa_demangle(((type_info *)*(*(int **)&d - 1))->name(), NULL, NULL, NULL);
	printf("\033[40;35m%s\n\033[0m", realname);
	free(realname);
	printf("\033[40;35m虚函数表地址: \t\t\t%p\n\033[0m", *(int **)&d);
	printf("\033[40;35m虚函数表 — 第1个函数地址:\t%p\t析构函数1地址: %p\n\033[0m", *(int **)&d + 0, (void *)*(*(int **)&d + 0));
	printf("\033[40;35m虚函数表 — 第2个函数地址:\t%p\t析构函数2地址: %p\n\033[0m", *(int **)&d + 1, (void *)*(*(int **)&d + 1));
	printf("\033[40;35m虚函数表 — 第3个函数地址:\t%p\t", *(int **)&d + 2);	
	((void (*)(derived_override *))*(*(int **)&d + 2))(&d); 	// derived_override print
	d.print();
	printf("\033[40;35m虚函数表 — 第4个函数地址:\t%p\t【结束 -- 不是0，与VS的区别】\t", *(int **)&d + 3);	
	printf("\033[40;35m\n\033[0m");

	printf("\033[40;35m推测数据成员ibase地址: \t\t%p\t通过地址取得的值: %d\n\033[0m", (int *)&d + 1, *((int *)&d + 1));
	printf("\033[40;35m推测数据成员iderived地址: \t%p\t通过地址取得的值: %d\n\033[0m", (int *)&d + 2, *((int *)&d + 2));
}

static void test_multip_inherit(void)
{
	derived_multip_inherit dmi(3333);
	char *realname = NULL;

	printf("\033[40;35m对象dmi的大小: %zu\n\033[0m", sizeof(dmi));
	printf("\033[40;35m对象dmi的起始内存地址: %p\n\033[0m", &dmi);
	printf("\033[40;35mtype_info信息1: %p\n\033[0m", (void *)*(*(int **)&dmi - 1));
	realname = __cxa_demangle(((type_info *)*(*(int **)&dmi - 1))->name(), NULL, NULL, NULL);
	printf("\033[40;35m%s\n\033[0m", realname);
	free(realname);
	printf("\033[40;35mtype_info信息2: %p\n\033[0m", (void *)(*(*(int **)((int)&dmi + sizeof(base)) - 1)));
	realname = __cxa_demangle(((type_info *)*(*(int **)((int)&dmi + sizeof(base)) - 1))->name(), NULL, NULL, NULL);
	printf("\033[40;35m%s\n\033[0m", realname);
	free(realname);
	printf("\033[40;35m虚函数表_vptr_base地址：\t%p\n\033[0m", *(int **)&dmi);
	printf("\033[40;35m_vptr_base — 第1个函数地址: \t%p\t析构函数1地址: %p\n\033[0m", *(int **)&dmi + 0, (void *)*(*(int **)&dmi + 0));
	printf("\033[40;35m_vptr_base — 第2个函数地址: \t%p\t析构函数2地址: %p\n\033[0m", *(int **)&dmi + 1, (void *)*(*(int **)&dmi + 1));
	printf("\033[40;35m_vptr_base — 第3个函数地址: \t%p\t", *(int **)&dmi + 2); 	// derived_multip_inherit::print
	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 2))(&dmi);
	dmi.print();
	printf("\033[40;35m_vptr_base — 第4个函数地址: \t%p\t", *(int **)&dmi + 3);		// derived_multip_inherit::test_fun
	((void (*)(derived_multip_inherit *))*(*(int **)&dmi + 3))(&dmi);
	dmi.test_fun();
	printf("\033[40;35m_vptr_base — 第5个函数地址:\t%p\t【结束 -- 不是0，与VS的区别】\t", *(int **)&dmi + 4);	
	printf("\033[40;35m\n\033[0m");
	
	printf("\033[40;35m推测数据成员ibase地址: \t\t%p\t通过地址取得的值: %d\n\033[0m", (int *)&dmi + 1, *((int *)&dmi + 1));

	printf("\033[40;32m**********************************************************************************\n\033[0m");

	int *_vptr_base1 = *(int **)((int)&dmi + sizeof(base)); 
	printf("\033[40;35m虚函数表_vptr_base1地址: \t%p\n\033[0m", _vptr_base1);
	printf("\033[40;35m_vptr_base1 - 第1个函数地址: \t%p\t即析构函数1地址: %p\n\033[0m", _vptr_base1 + 0, (void *)*(_vptr_base1 + 0));
	printf("\033[40;35m_vptr_base1 - 第2个函数地址: \t%p\t即析构函数2地址: %p\n\033[0m", _vptr_base1 + 1, (void *)*(_vptr_base1 + 1));
	printf("\033[40;35m_vptr_base1 - 第3个函数地址: \t%p\t", _vptr_base1 + 2);
	((void (*)(base1 *))*(_vptr_base1 + 2))((base1 *)((int)&dmi + sizeof(base)));
	printf("\033[40;35m_vptr_base1 - 第4个函数地址: \t%p\t%p【结束】\n\033[0m", _vptr_base1 + 3, (void *)*(_vptr_base1 + 3));
	printf("\033[40;35m\n\033[0m");
	printf("\033[40;35m推测数据成员ibase1地址: \t%p\t通过地址取得的值: %d\n\033[0m", 
						(void *)((int)&dmi + sizeof(base) + 4), *(int *)((int)&dmi + sizeof(base) + 4));

	printf("\033[40;32m**********************************************************************************\n\033[0m");

	printf("\033[40;35m推测数据成员iderived_multip_inherit地址: \t%p\t通过地址取得的值: %d\n\033[0m",
					(void *)((int)&dmi + sizeof(base) + sizeof(base1)), *(int *)((int)&dmi + sizeof(base) + sizeof(base1)));
}

static void test_single_virtual_inherit(void)
{
	derived_virtual_inherit1 dvi1(8888);	
	char *realname = NULL;

	printf("\033[40;35m对象dvi1的大小: %zu\n\033[0m", sizeof(dvi1));
}

static void test_multip_virtual_inherit(void)
{}
#if 0
格式: echo "\033[字背景颜色;字体颜色m字符串\033[0m"
例如:
echo "\033[41;36m something here \033[0m" 
其中41的位置代表底色, 36的位置是代表字的颜色
那些ascii code 是对颜色调用的始末. 
\033[ ; m …… \033[0m 
字背景颜色范围:40----49
40:黑
41:深红
42:绿
43:黄色
44:蓝色
45:紫色
46:深绿
47:白色
字颜色:30-----------39
30:黑
31:红
32:绿
33:黄
34:蓝色
35:紫色
36:深绿
37:白色
===============================================ANSI控制码的说明 
\33[0m 关闭所有属性 
\33[1m 设置高亮度 
\33[4m 下划线 
\33[5m 闪烁 
\33[7m 反显 
\33[8m 消隐 
\33[30m -- \33[37m 设置前景色 
\33[40m -- \33[47m 设置背景色 
\33[nA 光标上移n行 
\33[nB 光标下移n行 
\33[nC 光标右移n行 
\33[nD 光标左移n行 
\33[y;xH设置光标位置 
\33[2J 清屏 
\33[K 清除从光标到行尾的内容 
\33[s 保存光标位置 
\33[u 恢复光标位置 
\33[?25l 隐藏光标 
\33[?25h 显示光标
***************************
#include <stdio.h>
int 
main(int argc,char **argv)
{
    printf("\033[31m Hello\n\033[0m");
    printf("\033[2;7;1m Linux\n\033[2;7;0m");
    printf("\033[41;36m World\n\033[0m");
    return 0;
} ......
#endif
