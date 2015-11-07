#ifndef __TIME_H__
#define __TIME_H__

class time {
public:
	time();
	void set_time(int, int, int);
	void print_time(void);
private:
	int hour;	// 0 - 23
	int minute;	// 0 - 59
	int second;	// 0 - 59
};

#endif	// __TIME_H__
