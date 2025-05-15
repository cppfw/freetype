include $(config_dir)base/base.mk

this_cflags += -O3

this_cxx := em++
this_cc := emcc
this_ar := emar

this_static_lib_only := true

# TODO: remove the warning suppression when the PR is merged
# Suppress version-check warning due to https://github.com/conan-io/conan-center-index/pull/26247
this_cxxflags += -Wno-version-check
this_cflags += -Wno-version-check

this_cxxflags += -fwasm-exceptions
this_cxxflags += -sSUPPORT_LONGJMP=wasm
this_cflags += -sSUPPORT_LONGJMP=wasm
this_ldflags += -fwasm-exceptions
this_ldflags += -sSUPPORT_LONGJMP=wasm

this_cxxflags += -pthread
this_cflags += -pthread
this_ldflags += -pthread
