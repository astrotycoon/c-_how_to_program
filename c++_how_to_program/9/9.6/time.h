#ifndef __TIME_H__
#define __TIME_H__

class time {
public:
	time(int = 0, int = 0, int = 0);
//	~time();
	void set_time(int h, int m, int s);
	void set_hour(int h);
	void set_minute(int m);
	void set_second(int s);

	int get_hour(void);
	int get_minute(void);
	int get_second(void);

	void print_universal(void);
	void print_standard(void);

private:
	int hour;
	int minute;
	int second;
};

#endif	// __TIME_H__
