include CommonDefs.mak

BIN_DIR = Bin

INC_DIRS = /usr/local/include/OpenNI2

SRC_FILES = *.cpp

USED_LIBS += OpenNI2

EXE_NAME = SimpleRead

CFLAGS += -Wall

include CommonCppMakefile
