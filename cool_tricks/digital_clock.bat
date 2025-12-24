@echo off
title NITRO_CLOCK_V3
color 0b
mode con: cols=60 lines=16

:main
cls
echo.
echo.
:: The ^ symbol tells the script to treat | as text, not a command
echo          _______
echo         //  I  \ \
echo   _____//___I___\ \___        KHARMUKILAN MUTHURAMAN
echo   )  _           _    \       -----------------------
echo   ^|_/ \_________/ \___^|
echo  ___\_/_________\_/____________________________________
echo.
echo.

:: Get Date and Time via PowerShell
for /f "delims=" %%a in ('powershell -Command "Get-Date -Format 'hh:mm:ss tt'"') do set "currTime=%%a"
for /f "delims=" %%b in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd [ddd]'"') do set "currDate=%%b"

echo      .----------------------------------------------.
echo      ^|  TIME : %currTime%                         ^|
echo      ^|  DATE : %currDate%                    ^|
echo      '----------------------------------------------'
echo.

:: Wait 1 second
timeout /t 1 >nul
goto main