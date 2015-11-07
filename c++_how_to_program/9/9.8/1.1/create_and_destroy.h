#ifndef __CREATE_AND_DESTROY__
#define __CREATE_AND_DESTROY__

class create_and_destroy {
public:
	// constructor 
	create_and_destroy(int, const char *str);
	// destructor
	~create_and_destroy();

private:
	int object_id;
	const char *str;
};

#endif	// __CREATE_AND_DESTROY__
