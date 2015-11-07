#include <iostream>
#include <string>

using namespace std;

class teacher {
public:
	teacher(string name) : name(name), wallet(0) {}
	~teacher() {}

	void givee_lesson(void)
	{
		prepare_lesson();
		cout << "givee lesson" << endl;
		this->wallet += 100;
	}

	string get_name(void) const
	{
		return this->name;
	}

protected:
	void prepare_lesson(void)
	{
		cout << "prepare lesson" << endl;
	}
	string name;

private:
	int wallet;
};

int main(int argc, const char *argv[])
{
	teacher te1("astrol");	

	string name;
	name = te1.get_name();
	cout << "name = " << name << endl;

	return 0;
}
