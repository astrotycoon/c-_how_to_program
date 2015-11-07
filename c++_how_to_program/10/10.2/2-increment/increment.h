#ifndef __INCREMENT_H__
#define __INCREMENT_H__

#include <cstdio>

class increment_t {
public:
	increment_t(int c = 0, int i = 1);	// default constructor	
	increment_t(const increment_t &);// copy constructor
	const increment_t &operator = (const increment_t &);	// assignment 
	~increment_t(void);					// destructor
	

	void add_increment(void)  
	{
		this->count += this->increment;
	}

	void print(void) const;

private:
	int 		count;
	const int 	increment;	// const data members must be initialized using member initializers

//	int 		&ref;		// data members that are references must be initialized using member initializers

//	increment_t(const increment_t &rhs); 	// copy constructor
//	const increment_t &operator =(const increment_t &rhs);
};

#endif	// __INCREMENT_H__
