#include <cstddef>
#include <iostream>
#include <string>
using namespace std;

struct keyboard {
	string str_model;
};

class computer {
public:
	// default constructor
	computer()
		:pkb_(NULL), str_model("") 
	{}

	// copy constructor
	computer(const computer &com)
			:str_model(com.str_model)
	{
		keyboard *oldpkb = com.get_keyboard();
		if (oldpkb) {
			this->pkb_ = new keyboard(*oldpkb);	// call keyboard default copy constructor
		} else {
			this->pkb_ = NULL;
		}	
	}

	const computer &operator =(const computer &com)
	{
		if (this == &com)	
			return *this;

		this->str_model = com.str_model;
		delete this->pkb_;
		keyboard *oldpkb = com.get_keyboard();
		if (oldpkb) {
			this->pkb_ = new keyboard(*oldpkb);
		} else {
			this->pkb_ = NULL;
		}

		return *this;
	}

	// destructor
	~computer()  
	{
		delete this->pkb_;
		this->pkb_ = NULL; 
	}

	void set_keyboard(keyboard *pkb) 
	{
		this->pkb_ = pkb;
	}
	
	keyboard *get_keyboard(void) const   
	{
		return this->pkb_;
	}

	void set_strmodel(string str)
	{
		this->str_model = str;
	}

	string get_strmodel(void) const
	{
		return this->str_model;
	}

private:
	keyboard *pkb_;		// 指针类型的成员变量
	string str_model;	// 对象类型的成员变量
};

int main(int argc, const char *argv[])
{
	computer c1, c2;

	keyboard *pkb = new keyboard;
	pkb->str_model = "hello keyboard";
	c1.set_keyboard(pkb);

	computer c3 = c1;	// 调用拷贝构造函数
	c2 = c1;

	cout << "c1 strmodel = " << c1.get_keyboard() << " (" << c1.get_keyboard()->str_model << ")" << endl;
	cout << "c2 strmodel = " << c2.get_keyboard() << " (" << c2.get_keyboard()->str_model << ")" << endl;
	cout << "c3 strmodel = " << c3.get_keyboard() << " (" << c3.get_keyboard()->str_model << ")" << endl;

	return 0;	
}
