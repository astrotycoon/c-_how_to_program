#ifndef __EMPLOYEE_H__
#define __EMPLOYEE_H__

#include "date.h"

class employee {	// enclosing class 封闭类
public:
	employee(const char *const, const char *const, const date &, const date &);
	~employee(void);
	void print(void) const;
	
private:
	char first_name[25];
	char last_name[25];
//	const date birth_date;	// member object
//	const date hire_date;	// member object
	date birth_date;	// member object
	date hire_date;	// member object
};

#endif	// __EMPLOYEE_H__
