# Sets the minimum version of CMake required to build your native library.
# This ensures that a certain set of CMake features is available to
# your build.

cmake_minimum_required(VERSION 3.4.1)

# Specifies a library name, specifies whether the library is STATIC or
# SHARED, and provides relative paths to the source code. You can
# define multiple libraries by adding multiple add_library() commands,
# and CMake builds them for you. When you build your app, Gradle
# automatically packages shared libraries with your APK.

set(name freetype)

# file(GLOB_RECURSE srcs "../../src/*.c")
set(srcs
      ../../src/base/ftsystem.c
      ../../src/base/ftinit.c
      ../../src/base/ftdebug.c

      ../../src/base/ftbase.c

      ../../src/base/ftbbox.c
      ../../src/base/ftglyph.c

      ../../src/base/ftbdf.c
      ../../src/base/ftbitmap.c
      ../../src/base/ftcid.c
      ../../src/base/ftfstype.c
      ../../src/base/ftgasp.c
      ../../src/base/ftgxval.c
      ../../src/base/ftmm.c
      ../../src/base/ftotval.c
      ../../src/base/ftpatent.c
      ../../src/base/ftpfr.c
      ../../src/base/ftstroke.c
      ../../src/base/ftsynth.c
      ../../src/base/fttype1.c
      ../../src/base/ftwinfnt.c

      ../../src/bdf/bdf.c
      ../../src/cff/cff.c
      ../../src/cid/type1cid.c
      ../../src/pcf/pcf.c
      ../../src/pfr/pfr.c
      ../../src/sfnt/sfnt.c
      ../../src/truetype/truetype.c
      ../../src/type1/type1.c
      ../../src/type42/type42.c
      ../../src/winfonts/winfnt.c
      ../../src/psaux/psaux.c
      ../../src/pshinter/pshinter.c
      ../../src/psnames/psnames.c

      ../../src/raster/raster.c
      ../../src/smooth/smooth.c

      ../../src/autofit/autofit.c
)

link_directories( build/ndkLibs/${ANDROID_ABI}/ )

add_library( # Specifies the name of the library.
             ${name}

             # Sets the library as a shared library.
             STATIC

             # Provides a relative path to your source file(s).
             ${srcs} )



include_directories( build/ndkLibs/include/ ../../include )

add_definitions(-DFT2_BUILD_LIBRARY=1)

target_link_libraries(
        ${name}
        android log
    )
