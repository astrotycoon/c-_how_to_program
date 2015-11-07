#ifndef __TIME_H__
#define __TIME_H__

class time {
public:
	time(int = 0, int = 0, int = 0);	// default constructor
	~time(void);	// default destructor
	
	// set functions
	time &set_time(int, int, int);	// set time
	time &set_hour(int);	// set hour
	time &set_minute(int);	// set minute
	time &set_second(int);	// set second

	// get functions(normally declared const)
	int get_hour(void) const;	// return hour
	int get_minute(void) const;	// return minute
	int get_second(void) const;	// return second
	int get_second(void);	// overloaded function

	// print functions(normally declared const)
	void print_universal(void) const;
	void print_standard(void) const;

private:
	int hour;	// 0 ~ 23
	int minute;	// 0 ~ 59
	int second;	// 0 ~ 59
};

#endif	// __TIME_H__
