# modern-workflow

This repository contains a project example for the IAR STM32F429II-ACA board which can be open on the IAR Embedded Workbench for Arm or Visual Studio Code.

## Windows
### Option 1
- Set the `IAR_TOOLCHAIN_PATH` environment variable. Example:
```
IAR_TOOLCHAIN_PATH: C:\iar\ewarm-9.60.3
```
### Option 2
- Create a symlink named `ewarm`. Example using administrative cmd.exe shell:
```
C:
cd C:\IAR
C:\IAR>mklink /d ewarm ewarm-9.60.3
symbolic link created for ewarm <<===>> ewarm-9.60.3
```

## Linux
- Automatically set to the default installation location.