#ifndef __DERIVED_VIRTUAL_INHERIT1_H__
#define __DERIVED_VIRTUAL_INHERIT1_H__

#include "base.h"

class derived_virtual_inherit1 : virtual public base {
public:
	derived_virtual_inherit1(int);
	~derived_virtual_inherit1(void);

	virtual void print(void) const;
	virtual void inherit1_print(void) const;

protected:
	int iderived_virtual_inherit1;
};

//      vptr    ->   D1 D0 print  inherit1_print
//		iderived_virtual_inherit1
//		vptr    ->   
//		ibase

#endif	// __DERIVED_VIRTUAL_INHERIT1_H__
