# Compiler & Flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -O2

# Target Executable Name
TARGET = main

# Source Files
SRC = Main.cpp

# Default Build
all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

# Run the Application
run: $(TARGET)
	./$(TARGET)

# Clean Build Artifacts
clean:
	rm -f $(TARGET) $(TARGET).exe *.o

.PHONY: all run clean
