#ifndef __EMPLOYEE_H__
#define __EMPLOYEE_H__

class employee {
public:
	employee(const char *const, const char *const);
	~employee(void);

	const char *get_first_name(void) const;
	const char *get_last_name(void) const;

	// static member function can not have 'const' qualifier, 
	// becast the 'const' -> this 
	//static int get_count(void) const; //??? const?
	static int get_count(void);

private:
	char *first_name;
	char *last_name;

	static int count;
};

#endif	// __EMPLOYEE_H__
