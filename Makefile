all: gen/tdirectory.o gen/tfile.o gen/tobject.o gen/ttree.o

CFLAGS=`root-config --cflags --libs` -shared -fPIC

gen/tdirectory.o: gen/tdirectory.cc
	c++ $(CFLAGS) $< -o $@

gen/tobject.o: gen/tobject.cc
	c++ $(CFLAGS) $< -o $@

gen/tfile.o: gen/tfile.cc
	c++ $(CFLAGS) $< -o $@

gen/ttree.o: gen/ttree.cc
	c++ $(CFLAGS) $< -o $@

lib:
	c++ $(CFLAGS) gen/*.o -o libroot.dylib