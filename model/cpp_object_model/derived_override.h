#ifndef __DERIVED_OVERRIDE_H__
#define __DERIVED_OVERRIDE_H__

#include "base.h"

class derived_override : public base {
public:
	derived_override(int);
	virtual ~derived_override(void);
	virtual void print(void) const;	// override base中的print

protected:
	int iderived;
};
// vptr -> [D1] [D0] derived_override::print

#endif	// __DERIVED_OVERRIDE_H___
