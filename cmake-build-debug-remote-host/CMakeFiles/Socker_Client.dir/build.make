# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/computer_Study/SocketCommunication

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/computer_Study/SocketCommunication/cmake-build-debug-remote-host

# Include any dependencies generated for this target.
include CMakeFiles/Socker_Client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Socker_Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Socker_Client.dir/flags.make

CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o: CMakeFiles/Socker_Client.dir/flags.make
CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o: ../client_one_thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/computer_Study/SocketCommunication/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o -c /home/computer_Study/SocketCommunication/client_one_thread.cpp

CMakeFiles/Socker_Client.dir/client_one_thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socker_Client.dir/client_one_thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/computer_Study/SocketCommunication/client_one_thread.cpp > CMakeFiles/Socker_Client.dir/client_one_thread.cpp.i

CMakeFiles/Socker_Client.dir/client_one_thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socker_Client.dir/client_one_thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/computer_Study/SocketCommunication/client_one_thread.cpp -o CMakeFiles/Socker_Client.dir/client_one_thread.cpp.s

# Object files for target Socker_Client
Socker_Client_OBJECTS = \
"CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o"

# External object files for target Socker_Client
Socker_Client_EXTERNAL_OBJECTS =

../bin/Socker_Client: CMakeFiles/Socker_Client.dir/client_one_thread.cpp.o
../bin/Socker_Client: CMakeFiles/Socker_Client.dir/build.make
../bin/Socker_Client: CMakeFiles/Socker_Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/computer_Study/SocketCommunication/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/Socker_Client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Socker_Client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Socker_Client.dir/build: ../bin/Socker_Client

.PHONY : CMakeFiles/Socker_Client.dir/build

CMakeFiles/Socker_Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Socker_Client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Socker_Client.dir/clean

CMakeFiles/Socker_Client.dir/depend:
	cd /home/computer_Study/SocketCommunication/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/computer_Study/SocketCommunication /home/computer_Study/SocketCommunication /home/computer_Study/SocketCommunication/cmake-build-debug-remote-host /home/computer_Study/SocketCommunication/cmake-build-debug-remote-host /home/computer_Study/SocketCommunication/cmake-build-debug-remote-host/CMakeFiles/Socker_Client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Socker_Client.dir/depend

