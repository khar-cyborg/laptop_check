@echo off
title Power Menu
color 3f
:menu
cls
echo ====================================
echo        SYSTEM POWER CONTROLS
echo ====================================
echo [1] Shutdown Immediately
echo [2] Restart
echo [3] Sleep / Hibernate
echo [4] Abort / Exit
echo ====================================
set /p option="Select an option: "

if %option%==1 goto shutdown
if %option%==2 goto restart
if %option%==3 goto sleep
if %option%==4 goto end

:shutdown
echo Shutting down in 3 seconds...
shutdown /s /t 3
goto end

:restart
echo Restarting...
shutdown /r /t 0
goto end

:sleep
echo Going to sleep...
rundll32.exe powrprof.dll,SetSuspendState 0,1,0
goto end

:end
exit