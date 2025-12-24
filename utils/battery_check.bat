@echo off
title Battery Health Inspector
color 0b

echo ==================================================
echo       ANALYZING BATTERY CONDITION...
echo ==================================================
echo.

:: 1. Generate the report using Windows Power Config   
powercfg /batteryreport /output "battery_report.html"

:: 2. Check if the file was created successfully
if exist "battery_report.html" (
    echo [SUCCESS] Report generated successfully!
    echo. 
    echo Opening report in your default browser...
    :: 3. Open the file immediately
    start battery_report.html
) else (
    echo [ERROR] Failed to generate report.
    echo Please right-click this file and select "Run as Administrator".
)

echo.
pause
