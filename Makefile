.SUFFIXES : .cpp .o
CXX = g++

CPPFLAGS = -g
CXXFLAGS = -std=c++11

HEDRS = LinkedList.h Stack.h
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

TARGET = a.out

all : $(TARGET)

$(TARGET) : $(OBJS) $(HDRS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

clean :
	rm -rf $(OBJS) $(TARGET)	
