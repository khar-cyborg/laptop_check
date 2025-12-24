@echo off
title CYBER_DASHBOARD_V4
color 0a
mode con: cols=65 lines=22

:: --- STARTUP ANIMATION ---
cls
echo.
echo    [ INITIALIZING SYSTEM . . . ]
echo.
echo    LOADING ASSETS...
timeout /t 1 >nul
echo    CONNECTING TO SERVER...
timeout /t 1 >nul
echo    BYPASSING FIREWALL...
timeout /t 1 >nul
echo    ACCESS GRANTED.
timeout /t 1 >nul

:main
:: --- DATA COLLECTION ---

:: 1. Get Time/Date
for /f "delims=" %%a in ('powershell -Command "Get-Date -Format 'HH:mm:ss'"') do set "currTime=%%a"
for /f "delims=" %%b in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd'"') do set "currDate=%%b"

:: 2. Create a fake "Ping" number between 10-99 to look active
set /a fakePing=%random% %% 90 + 10

cls
echo.
echo  =============================================================
echo   SYSTEM: %COMPUTERNAME%       USER: %USERNAME%
echo  =============================================================
echo.
echo          _______
echo         //  I  \ \             [ STATUS: ONLINE ]
echo   _____//___I___\ \___
echo   )  _           _    \        [ SECURITY: LOW  ]
echo   ^|_/ \_________/ \___^|
echo  ___\_/_________\_/___________________________________________
echo.
echo      .---------------------------------------------------.
echo      ^|  CLOCK      : %currTime%                        ^|
echo      ^|  CALENDAR   : %currDate%                    ^|
echo      ^|---------------------------------------------------^|
echo      ^|  NET_LATENCY: %fakePing% ms                           ^|
echo      ^|  MEMORY     : OK                                ^|
echo      '---------------------------------------------------'
echo.
echo   [ LOG ] : MONITORING ACTIVE...
echo   ^>_
echo.

:: Wait 1 second
timeout /t 1 >nul
goto main