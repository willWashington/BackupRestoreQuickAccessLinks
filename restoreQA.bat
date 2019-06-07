@echo off
REM Store the target username in variable %un%
echo Enter the username to restore:
set /P un=
REM Store the target PC in variable %pc%
echo Enter the computer you want to restore to:
set /P pc=

REM robocopy the shortcuts located on the local machine for the %un% to the quick access location on the %pc%.
robocopy "C:\_profBkup\%un%\Quick Access Backup" "\\%pc%\c$\users\%un%\appdata\roaming\microsoft\windows\recent\automaticdestinations" *.automaticDestinations-ms
pause