class Teacher {
public:
	Teacher(int age)
	{
		this->age_ = age;
	}

	Teacher(): Teacher(28) {}

private:
	int age_;
};

int main(int argc, const char *argv[])
{
	Teacher MrYao;
	Teacher MrChe(100);
	return 0;	
}
