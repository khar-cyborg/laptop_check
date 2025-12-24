@echo off
title Modern Gaming Spec Reporter
color 0b

echo =================================================
echo    GATHERING HARDWARE DATA (POWERED BY POWERSHELL)
echo =================================================

:: 1. Define File Name
set "REPORT_FILE=Gaming_Rig_Report.html"

:: 2. Create HTML Header
echo ^<html^> > %REPORT_FILE%
echo ^<body style="font-family:Consolas, monospace; background-color:#1e1e1e; color:#00ffff;"^> >> %REPORT_FILE%
echo ^<h1^>GAMING HARDWARE DIAGNOSTICS^</h1^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%

:: 3. GRAPHICS CARD (Using PowerShell)
echo ^<h3^>[ GRAPHICS CARD / GPU ]^</h3^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Select-Object Name, AdapterRAM, DriverVersion | Format-Table -AutoSize | Out-String -Width 4096" >> %REPORT_FILE%
echo ^</pre^> >> %REPORT_FILE%

:: 4. MEMORY / RAM
echo ^<h3^>[ RAM PERFORMANCE ]^</h3^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%
powershell -NoProfile -Command "Get-CimInstance Win32_PhysicalMemory | Select-Object Capacity, Speed, Manufacturer, PartNumber | Format-Table -AutoSize | Out-String -Width 4096" >> %REPORT_FILE%
echo ^</pre^> >> %REPORT_FILE%

:: 5. PROCESSOR / CPU
echo ^<h3^>[ CPU CORE INFO ]^</h3^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Select-Object Name, MaxClockSpeed, NumberOfCores, ThreadCount | Format-Table -AutoSize | Out-String -Width 4096" >> %REPORT_FILE%
echo ^</pre^> >> %REPORT_FILE%

:: 6. STORAGE (SSD/HDD)
echo ^<h3^>[ STORAGE DRIVES ]^</h3^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%
powershell -NoProfile -Command "Get-PhysicalDisk | Select-Object FriendlyName, MediaType, Size | Format-Table -AutoSize | Out-String -Width 4096" >> %REPORT_FILE%
echo ^</pre^> >> %REPORT_FILE%

:: 7. Footer and Open
echo ^<hr^> >> %REPORT_FILE%
echo ^<p^>Generated on %date% at %time%^</p^> >> %REPORT_FILE%
echo ^</body^> >> %REPORT_FILE%
echo ^</html^> >> %REPORT_FILE%

echo.
echo [SUCCESS] Report generated! Opening now...
start %REPORT_FILE%
pause