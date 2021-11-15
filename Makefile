INCLUDES=-I includes/
CXXFLAGS= --bind -std=c++2a -g -O0 -Wall -Wextra -Werror -pedantic $(INCLUDES)
WASM =-s WASM=1
CXX=emcc

clean:
	rm -f bin/*

exec: src/*.cc
	$(CXX) $(CXXFLAGS) $^ $(WASM) -o  wasm/exec.js

src/%.cc: includes/%.hpp
	touch $@

.DEFAULT_GOAL := exec