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
CMAKE_BINARY_DIR = /home/computer_Study/SocketCommunication/build

# Include any dependencies generated for this target.
include CMakeFiles/Socket_Server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Socket_Server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Socket_Server.dir/flags.make

CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o: CMakeFiles/Socket_Server.dir/flags.make
CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o: ../server_one_thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/computer_Study/SocketCommunication/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o -c /home/computer_Study/SocketCommunication/server_one_thread.cpp

CMakeFiles/Socket_Server.dir/server_one_thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket_Server.dir/server_one_thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/computer_Study/SocketCommunication/server_one_thread.cpp > CMakeFiles/Socket_Server.dir/server_one_thread.cpp.i

CMakeFiles/Socket_Server.dir/server_one_thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket_Server.dir/server_one_thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/computer_Study/SocketCommunication/server_one_thread.cpp -o CMakeFiles/Socket_Server.dir/server_one_thread.cpp.s

CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o: CMakeFiles/Socket_Server.dir/flags.make
CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o: ../threadpool/threadpool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/computer_Study/SocketCommunication/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o -c /home/computer_Study/SocketCommunication/threadpool/threadpool.cpp

CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/computer_Study/SocketCommunication/threadpool/threadpool.cpp > CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.i

CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/computer_Study/SocketCommunication/threadpool/threadpool.cpp -o CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.s

# Object files for target Socket_Server
Socket_Server_OBJECTS = \
"CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o" \
"CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o"

# External object files for target Socket_Server
Socket_Server_EXTERNAL_OBJECTS =

../bin/Socket_Server: CMakeFiles/Socket_Server.dir/server_one_thread.cpp.o
../bin/Socket_Server: CMakeFiles/Socket_Server.dir/threadpool/threadpool.cpp.o
../bin/Socket_Server: CMakeFiles/Socket_Server.dir/build.make
../bin/Socket_Server: CMakeFiles/Socket_Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/computer_Study/SocketCommunication/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/Socket_Server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Socket_Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Socket_Server.dir/build: ../bin/Socket_Server

.PHONY : CMakeFiles/Socket_Server.dir/build

CMakeFiles/Socket_Server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Socket_Server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Socket_Server.dir/clean

CMakeFiles/Socket_Server.dir/depend:
	cd /home/computer_Study/SocketCommunication/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/computer_Study/SocketCommunication /home/computer_Study/SocketCommunication /home/computer_Study/SocketCommunication/build /home/computer_Study/SocketCommunication/build /home/computer_Study/SocketCommunication/build/CMakeFiles/Socket_Server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Socket_Server.dir/depend

