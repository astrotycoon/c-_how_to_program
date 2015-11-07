class base {
public:
	base() {}
	virtual ~base() { int a = 10; }	
};

int main(int argc, const char *argv[])
{
	base b;

	return 0;	
}
