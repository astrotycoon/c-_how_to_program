#include <cstdio>
#include <string>

using namespace std;

class human {
public:
	void walk();
	void talk();

protected:
	string name;
	int age;
	bool male;

private:
};

class teacher: public human {
public:
	void prepare_lesson();
	void givee_lesson();
	void review_homework();

protected:
	int duty;	// 职务

private:
};

class student: public human {
public:
	void attend_class();
	void do_homework();

protected:
	int socre;

private:
};

class pupil: public student {
public:
	void play_game();
	void watch_tv();
	void do_homework();	// 对“做作业”的行为重新定义

protected:

private:
};

int main(int argc, const char *argv[])
{
	printf("sizeof(string) = %zu\n", sizeof(string));	// 4
	printf("sizeof(human) = %zu\n", sizeof(human));		// 12
	printf("sizeof(teacher) = %zu\n", sizeof(teacher));	// 16
	printf("sizeof(student) = %zu\n", sizeof(student));	// 16
	printf("sizeof(pupil) = %zu\n", sizeof(pupil));		// 16

	return 0;
}
