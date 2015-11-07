#ifndef __SALES_PERSION__
#define __SALES_PERSION__

class sales_person {
public:
	sales_person();		// constructor 
	~sales_person();	// destructor
	void get_sales_from_user();	// input sales from keyboard
	void set_sales(int m, double s);	// set sales for a specific month
	void print_annual_sales();	// summarize and print sales
private:
	double totoal_annual_sales(); // utility function (helper function) 
	double sales[12] = { 0.0 };
};

#endif	// __SALES_PERSION__
