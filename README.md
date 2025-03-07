# modern-workflow

This repository contains a project example for the IAR STM32F429II-ACA board which can be opened in the IAR Embedded Workbench for Arm or Visual Studio Code.

# Windows
## Environment Options
### Option 1
- Set `IAR_TOOLCHAIN_PATH` as a Windows' system environment variable:
1. Press the "Start Menu", search for "Edit the system environment variables".
2. Enter with a new "System environment variable" as described below:

| Variable name | Value (Example) 
| - | -
| `IAR_TOOLCHAIN_PATH` | `C:\iar\ewarm-9.60.3`

### Option 2
- Create a symbolic link named `ewarm` in `C:\iar` using an administrative shell (e.g., `cmd.exe`). In the example below, a symbolic link for `C:\iar\ewarm-9.60.3` was created:
```cmd
X:\>C:
C:\xxx>cd \IAR
C:\IAR>mklink /d ewarm ewarm-9.60.3
symbolic link created for ewarm <<===>> ewarm-9.60.3
```

## IAR Embedded Workbench
### CMake configuration 
The `EWARM/light-effects-cmake.ewp` project comes pre-configured to use CMake from its default installation path (`C:\Program Files\CMake\bin\cmake.exe`). Please reconfigure the project accordingly whenever needed.

![image](https://github.com/user-attachments/assets/0bf36208-73b7-4f7e-a21e-631a58f46a24)


# Linux
- Automatically set to the default installation location.
