#ifndef __DERIVED_NO_OVERRIDE_H__
#define __DERIVED_NO_OVERRIDE_H__

#include "base.h"

class derived : public base {
public:
	derived(int);
	virtual ~derived(void);

	virtual void derived_print(void) const; 	// 没有overwrite base中的print 

protected:
	int iderived;
};
// vptr -> [D1] [D0] base::print derived::derived_print


#endif	// __DERIVED_NO_OVERRIDE_H__
