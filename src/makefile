include prorab.mk

$(eval $(call prorab-config, ../config))

this_name := freetype

this_soname := 0

this_srcs := 

this_srcs += base/ftsystem.c
this_srcs += base/ftinit.c
this_srcs += base/ftdebug.c
this_srcs += base/ftbase.c
this_srcs += base/ftbbox.c
this_srcs += base/ftglyph.c
this_srcs += base/ftbdf.c
this_srcs += base/ftbitmap.c
this_srcs += base/ftcid.c
this_srcs += base/ftfstype.c
this_srcs += base/ftgasp.c
this_srcs += base/ftgxval.c
this_srcs += base/ftmm.c
this_srcs += base/ftotval.c
this_srcs += base/ftpatent.c
this_srcs += base/ftpfr.c
this_srcs += base/ftstroke.c
this_srcs += base/ftsynth.c
this_srcs += base/fttype1.c
this_srcs += base/ftwinfnt.c
this_srcs += bdf/bdf.c
this_srcs += cff/cff.c
this_srcs += cid/type1cid.c
this_srcs += pcf/pcf.c
this_srcs += pfr/pfr.c
this_srcs += sfnt/sfnt.c
this_srcs += truetype/truetype.c
this_srcs += type1/type1.c
this_srcs += type42/type42.c
this_srcs += winfonts/winfnt.c
this_srcs += psaux/psaux.c
this_srcs += pshinter/pshinter.c
this_srcs += psnames/psnames.c
this_srcs += raster/raster.c
this_srcs += smooth/smooth.c
this_srcs += autofit/autofit.c

this_cflags += -I ../include
this_cflags += -D FT2_BUILD_LIBRARY=1

$(eval $(prorab-build-lib))
