#ifndef __TIME_H__
#define __TIME_H__

class time {
public:
	time();
	void set_time(int, int, int);
	void print_universal();
	void print_standard();
private:
	int hour;
	int minute;
	int second;
};

#endif	// __TIME_H__
