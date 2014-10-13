ARM_CXX=arm-linux-gnueabihf-g++

ARM_STAGING=Bin

PLATFORM=Arm

include CommonDefs.mak

BIN_DIR = Bin

INC_DIRS = /usr/arm-linux-gnueabihf/include /usr/arm-linux-gnueabihf/include/OpenNI2 /usr/arm-linux-gnueabihf/include/c++/4.8.2

LIB_DIRS = /usr/arm-linux-gnueabihf/lib/OpenNI2

SRC_FILES = *.cpp

USED_LIBS += OpenNI2

EXE_NAME = SimpleRead

CFLAGS += -Wall

include CommonCppMakefile
