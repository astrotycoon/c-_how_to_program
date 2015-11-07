#ifndef __COUNT_H__
#define __COUNT_H__

class count {
	friend void set_x(count &, int);

public:
	count();
	~count(void);	
	count(const count &);
	count &operator = (const count &);

	void print(void) const;

private:
	int x;
};
#endif	// __COUNT_H__
