#ifndef __DATA_H__
#define __DATA_H__

#include <cstdio>

class data {
public:
	data(int = 2000, int = 1, int = 1);	// default constructor
//	virtual ~data() {}
	void print_data(void);
//	const data &operator = (const data &) = delete;
private:
	int year, month, day;
	// disable copy constructor and assignment 
	data(const data &);
	const data &operator = (const data &);
};

#endif	// __DATA_H__
