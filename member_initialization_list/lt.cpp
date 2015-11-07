class CInnerClass {
public:
	CInnerClass(int id):m_iID(id) 	// constructor 
	{}

#if 0
	CInnerClass &operator = (const CInnerClass &rb) 
	{
		this->m_iID = rb.m_iID;
		return *this;
	}
#endif

private:
	int m_iID;
};

class CjdBase {
public:
	CjdBase(int id):m_innerObj(id), m_iID(id)
	{
		this->m_innerObj = 10;
	}

private:
	CInnerClass m_innerObj;
	int m_iID;
};

int main(int argc, const char *argv[])
{
	CjdBase jdb(100);	
	return 0;	
}
