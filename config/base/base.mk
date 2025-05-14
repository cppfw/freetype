# this_cflags += -Wall # enable all warnings
this_cflags += -Wno-comment # enable all warnings
this_cxxflags += -Wnon-virtual-dtor # warn if base class has non-virtual destructor
this_cflags += -Werror # treat warnings as errors
# this_cflags += -Wfatal-errors # stop on first error encountered
this_cxxflags += -fstrict-aliasing # in order to comply with the c++ standard more strictly
this_cxxflags += -std=c++17
this_cflags += -fPIC
this_cflags += -g

# this_ldlibs += -lstdc++
