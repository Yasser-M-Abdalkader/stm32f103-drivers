@echo off
set "make.exe=Make\make-3.81-bin\bin\make.exe"
set "CC=Make\gcc-arm-none-eabi-10.3-2021.10-win32/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-g++.exe"
set "makefile=Make\makefile"
REM Replace the following line with the actual command to run your program
if %1==clean goto clean
if %1==all %make.exe% -f %makefile% %1 >nul
if %1==drv %make.exe% -f %makefile% %1 >nul
if %1=="" echo Please select the target
:clean
if exist Out (
	%make.exe% -f %makefile% %1 >nul
)
:end

