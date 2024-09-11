@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
echo Your private IP is %NetworkIP%
echo Would you like to ping an IP?
set /p ys="[y/n]: "
if %ys%==y (goto :ping) else (goto :eave)

:ping
echo What IP would you like to ping?
set /p IP="Address: "

ping %IP%

:eave
echo
echo Thank you for your time.
pause
