@echo off
color 1f
mode con: cols=80 lines=40
title LAPTOP INSPECTOR V1.0

echo ========================================================
echo        RUNNING SYSTEM DIAGNOSTICS... PLEASE WAIT
echo ========================================================
echo.

:: --- 1. CPU & OS INFO ---
echo [1] SYSTEM CORE
systeminfo | findstr /C:"OS Name" /C:"System Type" /C:"Processor(s)"
echo.
echo --------------------------------------------------------

:: --- 2. RAM DETAILS (Speed & Slots) ---
echo.
echo [2] MEMORY (RAM) CHECK
echo * Check if "Speed" matches the tag (e.g., 3200 vs 4800)
echo * Count rows to see if it is Dual Channel (2 rows) or Single (1 row)
echo.
wmic memorychip get devicelocator, capacity, speed, manufacturer
echo.
echo --------------------------------------------------------

:: --- 3. STORAGE TYPE (SSD vs HDD) ---
echo.
echo [3] HARD DRIVE CHECK
echo * Looking for "SSD" (Good) or "HDD" (Slow)
echo.
powershell "Get-PhysicalDisk | Select-Object FriendlyName, MediaType, Size"
echo.
echo --------------------------------------------------------

:: --- 4. GRAPHICS CARD ---
echo.
echo [4] GRAPHICS / GPU
wmic path win32_VideoController get name, adapterram
echo.
echo --------------------------------------------------------

:: --- 5. BATTERY HEALTH REPORT ---
echo.
echo [5] GENERATING BATTERY REPORT...
powercfg /batteryreport /output "battery_check.html"
echo.
if exist "battery_check.html" (
    echo [SUCCESS] Report generated as "battery_check.html"
    echo Opening report now...
    start battery_check.html
) else (
    echo [ERROR] Could not generate battery report.
    echo Did you run this as Administrator?
)

echo.
echo ========================================================
echo           DIAGNOSTICS COMPLETE. PRESS ANY KEY.
echo ========================================================
pause >nul