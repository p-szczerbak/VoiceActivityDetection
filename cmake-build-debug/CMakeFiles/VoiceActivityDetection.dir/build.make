# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /home/paulina/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/paulina/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/paulina/github/VoiceActivityDetection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paulina/github/VoiceActivityDetection/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/VoiceActivityDetection.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/VoiceActivityDetection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VoiceActivityDetection.dir/flags.make

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/main.cpp

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/main.cpp > CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/main.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o: ../src/VAD.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/VAD.cpp

CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/VAD.cpp > CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/VAD.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o: ../src/VADImp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/VADImp.cpp

CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/VADImp.cpp > CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/VADImp.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o: ../src/ThresholdFinder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/ThresholdFinder.cpp

CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/ThresholdFinder.cpp > CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/ThresholdFinder.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o: ../src/EnergyBasedDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/EnergyBasedDetector.cpp

CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/EnergyBasedDetector.cpp > CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/EnergyBasedDetector.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o: ../src/ResultPlotter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/ResultPlotter.cpp

CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/ResultPlotter.cpp > CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/ResultPlotter.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o: ../src/SingleFrameEnergyFinder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/SingleFrameEnergyFinder.cpp

CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/SingleFrameEnergyFinder.cpp > CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/SingleFrameEnergyFinder.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o: ../src/SohnsDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/SohnsDetector.cpp

CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/SohnsDetector.cpp > CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/SohnsDetector.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o


CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o: CMakeFiles/VoiceActivityDetection.dir/flags.make
CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o: ../src/SFFDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o -c /home/paulina/github/VoiceActivityDetection/src/SFFDetector.cpp

CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paulina/github/VoiceActivityDetection/src/SFFDetector.cpp > CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.i

CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paulina/github/VoiceActivityDetection/src/SFFDetector.cpp -o CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.s

CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.requires:

.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.requires

CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.provides: CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/VoiceActivityDetection.dir/build.make CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.provides.build
.PHONY : CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.provides

CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.provides.build: CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o


# Object files for target VoiceActivityDetection
VoiceActivityDetection_OBJECTS = \
"CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o" \
"CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o"

# External object files for target VoiceActivityDetection
VoiceActivityDetection_EXTERNAL_OBJECTS =

VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/build.make
VoiceActivityDetection: ../aquila/lib/libAquila.a
VoiceActivityDetection: ../zsiciarz-aquila-d5e3bde/lib/libOoura_fft.a
VoiceActivityDetection: CMakeFiles/VoiceActivityDetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable VoiceActivityDetection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VoiceActivityDetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VoiceActivityDetection.dir/build: VoiceActivityDetection

.PHONY : CMakeFiles/VoiceActivityDetection.dir/build

CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/main.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/VAD.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/VADImp.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/ThresholdFinder.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/EnergyBasedDetector.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/ResultPlotter.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/SingleFrameEnergyFinder.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/SohnsDetector.cpp.o.requires
CMakeFiles/VoiceActivityDetection.dir/requires: CMakeFiles/VoiceActivityDetection.dir/src/SFFDetector.cpp.o.requires

.PHONY : CMakeFiles/VoiceActivityDetection.dir/requires

CMakeFiles/VoiceActivityDetection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VoiceActivityDetection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VoiceActivityDetection.dir/clean

CMakeFiles/VoiceActivityDetection.dir/depend:
	cd /home/paulina/github/VoiceActivityDetection/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paulina/github/VoiceActivityDetection /home/paulina/github/VoiceActivityDetection /home/paulina/github/VoiceActivityDetection/cmake-build-debug /home/paulina/github/VoiceActivityDetection/cmake-build-debug /home/paulina/github/VoiceActivityDetection/cmake-build-debug/CMakeFiles/VoiceActivityDetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VoiceActivityDetection.dir/depend

