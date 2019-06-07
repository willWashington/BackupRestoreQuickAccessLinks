@echo off
REM Store the username in the %un% variable
echo Enter the username to backup
set /P un=
REM Store the target PC name in the %pc% variable
echo Enter the PC to target
set /P pc=


REM Copy the files located in the quick access hidden system folder the %pc% for %un% to your local machine
robocopy "\\%pc%\c$\users\%un%\appdata\roaming\microsoft\windows\recent\automaticdestinations" "c:\_profBkup\%un%\Quick Access Backup"

pause

