#include <cstdio>

class human {
public:
	// overload
	virtual void talk(void) { printf("ha-ha\n"); }
	virtual void talk(char *msg) { printf("%s\n", msg); };
};

class baby : public human {
public:
	// override
	virtual void talk(void) { printf("ma-ma\n"); }
};

int main(int argc, const char *argv[])
{
	human astrol;
	
	astrol.talk();
	astrol.talk((char *)"I am a human");

	baby ba;
	ba.talk();
	((human)ba).talk((char *)"I AM A BABY");

	human *pba = &ba;
	pba->talk();
	pba->talk((char *)"I am a baby"); 

	return 0;	
}
