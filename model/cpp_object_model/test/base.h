#ifndef __BASE_H__
#define __BASE_H__

class base {
public:
	base(int);
	virtual ~base(void);

	int get_ibase(void) const;
	static int get_icount(void); 
	virtual void print(void) const;

private:
	int ibase;
	static int icount; 
};

#endif	// __BASE_H__
