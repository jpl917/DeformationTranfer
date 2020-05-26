INCLUDE_PATH    := ./ ../external/SuiteSparse/include/ ../common/ ../gl_util/
SOURCE_PATH     := ./ ../common/ ../gl_util/
DEPENDENCY_PATH := dep
OBJECT_PATH     := obj

EXTERNAL_LIBS := $(wildcard ../external/SuiteSparse/lib/*)
LDLIBS := -lm -lpthread -lglut -lGL -lGLU 

LDDIR+=-L../external/SuiteSparse/lib/

$(info $(EXTERNAL_LIBS) )

CFLAGS += -O3

include ../makefile.mk
