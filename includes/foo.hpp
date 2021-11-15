#ifndef FOO_HPP
#define FOO_HPP

#include <string>

#include <emscripten/bind.h>

using namespace emscripten;

class Foo {
public:
  std::string Bar();
};

EMSCRIPTEN_BINDINGS(Foo) {
  class_<Foo>("Foo")
    .constructor<>()
    .function("Bar", &Foo::Bar)
    ;
}

#endif