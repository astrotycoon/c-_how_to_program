#include <cstdio>

class CStudent {
public:
#if 0
	CStudent() 
	{
		this->name = "linux";
		this->age = 25;
		this->score = 1.0;
	}
#endif

	CStudent(char *name = "linux", int age = 25, int score = 10)
	{
		this->name = name;
		this->age = age;
		this->score = score;
	}

	~CStudent()
	{
		printf("%s goodbye\n", this->name);
	}

private:
	char const *name;
	int age;
	int score;
};

int main(void)
{
	CStudent stu1;						// linux 25 10
	CStudent stu2("astrol");			// astrol 25 10
	CStudent stu3("astrotycoon", 100);	// astrotycoon 100 10
	CStudent stu4("unix", 40, 200); 	// unix 40, 200

	return 0;
}
