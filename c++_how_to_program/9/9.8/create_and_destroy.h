#ifndef __CREATE_AND_DESTROY__
#define __CREATE_AND_DESTROY__

#include <iostream>
#include <string>

using namespace std;

class create_and_destroy {
public:

	// constructor 
	create_and_destroy(int, std::string);
	// destructor
	~create_and_destroy();

private:
	int object_id;
	std::string message;
};

#endif	// __CREATE_AND_DESTROY__
