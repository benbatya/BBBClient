ARM_CXX=arm-linux-gnueabihf-g++

ARM_STAGING=Bin

PLATFORM=Arm

include CommonDefs.mak

BIN_DIR = Bin

# This set of includes doesn't work with the STL
# INC_DIRS = /usr/arm-linux-gnueabihf/include /usr/arm-linux-gnueabihf/include/c++/4.8.2 /usr/arm-linux-gnueabihf/include/OpenNI2

# This set of includes seems to get the cross compiler working ok 
INC_DIRS = /usr/arm-linux-gnueabihf/include /usr/aarch64-linux-gnu/include/c++/4.8.2 /usr/aarch64-linux-gnu/include/c++/4.8.2/aarch64-linux-gnu /usr/arm-linux-gnueabihf/include/OpenNI2

LIB_DIRS = /usr/arm-linux-gnueabihf/lib/OpenNI2

SRC_FILES = *.cpp

USED_LIBS += OpenNI2

EXE_NAME = SimpleRead

CFLAGS += -Wall -std=c++11

include CommonCppMakefile
