#ifndef __DERIVED_MULTIP_INHERIT_H__
#define __DERIVED_MULTIP_INHERIT_H__

#include "base.h"
#include "base1.h"

class derived_multip_inherit : public base, public base1 {
public:
	derived_multip_inherit(int);
	virtual ~derived_multip_inherit(void);

	virtual void print(void) const;
	virtual void test_fun(void);

protected:
	int iderived_multip_inherit;
};

#endif	// __DERIVED_MULTIP_INHERIT_H__
