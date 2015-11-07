#ifndef __BASE1_H__
#define __BASE1_H__

class base1 {
public:
	base1(int);
	virtual ~base1(void);

	virtual void print(void) const;

protected:	
	int ibase1;
};

#endif	// __BASE1_H__
