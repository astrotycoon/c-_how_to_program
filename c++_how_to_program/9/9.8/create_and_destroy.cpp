#include "create_and_destroy.h"

// constructor
create_and_destroy::create_and_destroy(int id, string str):object_id(id), message(str)
{
	cout << "Object " << this->object_id << " constructor runs "
		<< this->message << endl; 
}

// destructor
create_and_destroy::~create_and_destroy()
{
	cout << "Object " << this->object_id << " destructor runs " 
		<< this->message << endl;
}
