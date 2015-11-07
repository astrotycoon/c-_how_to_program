#ifndef __DATE_H__
#define __DATE_H__

class date {
public:
	date(int = 1, int = 1, int = 1990);		// default constructor
	date(const date &);						// copy constructor 
	const date &operator = (const date &);	// copy assignment operator
	~date(void);	// destructor

	void print(void) const;	// print date in month/day/year format
	
private:
	int month, day, year;
	int check_day(int) const;
};

#endif	// __DATE_H__
