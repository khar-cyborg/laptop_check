@echo off
title Digital Clock
color 0a
mode con: cols=30 lines=5
cursor_off

:main
cls
echo.
echo      CURRENT TIME
echo    %time%
echo.
echo    Date: %date%
:: Wait 1 second before looping
timeout /t 1 >nul
goto main