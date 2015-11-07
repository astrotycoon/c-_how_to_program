OBJS+=main.o base.o base1.o derived.o derived_override.o derived_multip_inherit.o derived_virtual_inherit1.o
TARGET=main

all: $(OBJS)
	g++ -g -o $(TARGET) $^   
	g++ -g -o base_test base_test.cpp base.cpp
	g++ -g -o derived_test derived_test.cpp derived.cpp base.cpp
	g++ -g -o derived_override_test derived_override_test.cpp derived_override.cpp base.cpp
	g++ -g -o derived_multip_inherit_test derived_multip_inherit_test.cpp derived_multip_inherit.cpp base.cpp base1.cpp 
	g++ -g -o derived_virtual_inherit1_test derived_virtual_inherit1_test.cpp derived_virtual_inherit1.cpp base.cpp
clean:
	rm -rf *.o main base_test derived_test derived_override_test core derived_multip_inherit_test derived_virtual_inherit1_test


