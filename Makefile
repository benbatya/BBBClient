ARM_CXX=arm-linux-gnueabihf-g++

ARM_STAGING=Bin

PLATFORM=Arm

include CommonDefs.mak

BIN_DIR = Bin

# This set of includes doesn't work with the STL
# INC_DIRS = /usr/arm-linux-gnueabihf/include /usr/arm-linux-gnueabihf/include/c++/4.8.2 /usr/arm-linux-gnueabihf/include/OpenNI2

# This set of includes seems to get the cross compiler working ok 
INC_DIRS = /usr/arm-linux-gnueabihf/include \
/usr/arm-linux-gnueabihf/include/c++/4.8.2 \
/usr/arm-linux-gnueabihf/include/c++/4.8.2/arm-linux-gnueabihf \
/usr/arm-linux-gnueabihf/include/OpenNI2

LIB_DIRS = /usr/arm-linux-gnueabihf/lib/OpenNI2 /usr/arm-linux-gnueabihf/lib/boost

SRC_FILES = *.cpp

USED_LIBS += OpenNI2 boost_system boost_thread

EXE_NAME = SimpleRead

CFLAGS += -Wall

include CommonCppMakefile
