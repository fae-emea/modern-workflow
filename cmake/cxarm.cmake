# Toolchain File for the IAR C/C++ Compiler (CXARM)

# Set CMake to use the IAR C/C++ Compiler from the IAR Build Tools for Arm
if(UNIX)
  set(CMAKE_ASM_COMPILER "/opt/iarsystems/cxarm/arm/bin/iasmarm")
  set(CMAKE_C_COMPILER   "/opt/iarsystems/cxarm/arm/bin/iccarm")
  set(CMAKE_CXX_COMPILER "/opt/iarsystems/cxarm/arm/bin/iccarm")
elseif(WIN32)
  set(CMAKE_ASM_COMPILER "C:/iar/cxarm-9.60.4/arm/bin/iasmarm.exe")
  set(CMAKE_C_COMPILER   "C:/iar/cxarm-9.60.4/arm/bin/iccarm.exe")
  set(CMAKE_CXX_COMPILER "C:/iar/cxarm-9.60.4/arm/bin/iccarm.exe")
endif()

# Set the default build tool for Ninja generators
# Reasonably recent IAR products ships with ninja (https://ninja-build.org)
# The CMake code block below tries to find it. If not found, 
# manually install the desired build system in your operating system
# Alternatively: set(CMAKE_MAKE_PROGRAM "/usr/bin/ninja")
if(CMAKE_GENERATOR MATCHES "^Ninja.*$")
  find_program(CMAKE_MAKE_PROGRAM
    NAMES ninja
    PATHS $ENV{PATH}
          "/opt/iarsystems/cxarm/common/bin"
          "C:/iar/cxarm-9.60.3/common/bin"
    REQUIRED)
endif()
