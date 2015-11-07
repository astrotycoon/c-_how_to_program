class my_class {
public:
	my_class()
	{
		member = 1;
	}

	void method(int n)
	{
		member = n;
	}

	virtual ~my_class()
	{
		member = 0;
	}
private:
	int member;
	my_class my;	// wrong, incomplete type
	my_class *my;	// correct
};

int main(int argc, char *argv[])
{
	my_class a_class;
	a_class.method(10);

	return 0;
}
