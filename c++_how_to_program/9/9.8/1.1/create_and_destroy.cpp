#include <iostream>
using namespace std;

#include "create_and_destroy.h"

// constructor
create_and_destroy::create_and_destroy(int id, const char *str):object_id(id), str(str)
{
	cout << "Object " << this->object_id << " constructor runs "
		<< this->str << endl; 
}

// destructor
create_and_destroy::~create_and_destroy()
{
	cout << "Object " << this->object_id << " destructor runs " 
		<< this->str << endl;
}
