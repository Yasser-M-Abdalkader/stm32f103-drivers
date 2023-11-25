@echo off
set "make=Make\make-3.81-bin\bin\make.exe"
set "makefile=Make\makefile"
REM Replace the following line with the actual command to run your program
if %1==clean goto clean
if %1==all %make% -f %makefile% %1 >nul
if %1==drv %make% -f %makefile% %1 >nul
if %1=="" echo Please select the target
:clean
if exist Out (
	%make% -f %makefile% %1 >nul
)
:end

