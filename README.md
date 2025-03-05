# modern-workflow

This repository contains a project example for the IAR STM32F429II-ACA board which can be open on the IAR Embedded Workbench for Arm or Visual Studio Code.

## Windows
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

## Linux
- Automatically set to the default installation location.
