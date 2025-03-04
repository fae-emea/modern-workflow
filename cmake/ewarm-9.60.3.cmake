# Toolchain File for the IAR C/C++ Compiler (EWARM)

# Set CMake to use the IAR C/C++ Compiler from the IAR Embedded Workbench for Arm
# Update if using a different supported target or operating system
set(CMAKE_ASM_COMPILER "C:/iar/ewarm-9.60.3/arm/bin/iasmarm.exe")
set(CMAKE_C_COMPILER   "C:/iar/ewarm-9.60.3/arm/bin/iccarm.exe")
set(CMAKE_CXX_COMPILER "C:/iar/ewarm-9.60.3/arm/bin/iccarm.exe")

# Set the default build tool for Ninja generators
# Reasonably recent IAR products ships with ninja (https://ninja-build.org)
# The CMake code block below tries to find it. If not found, 
# manually install the desired build system in your operating system
# Alternatively: set(CMAKE_MAKE_PROGRAM "C:/path/to/ninja.exe")
if(CMAKE_GENERATOR MATCHES "^Ninja.*$")
  find_program(CMAKE_MAKE_PROGRAM
    NAMES ninja.exe
    PATHS $ENV{PATH}
          "C:/iar/ewarm-9.60.3/common/bin"
    REQUIRED)
endif()