@echo off
:: Set console code page to UTF-8 for emoji support
chcp 65001 >nul
title 📊 System Info to PDF Converter
color 1f

echo ⚙️ =================================================
echo ⏳      GENERATING SYSTEM REPORT... PLEASE WAIT
echo ⚙️ =================================================

:: 1. Define the filename
set "REPORT_FILE=System_Report.html"

:: 2. Create the HTML Header (To make it look nice)
echo ^<!DOCTYPE html^> > %REPORT_FILE%
echo ^<html^> >> %REPORT_FILE%
echo ^<head^>^<meta charset="UTF-8"^>^</head^> >> %REPORT_FILE%
echo ^<body style="font-family:Courier New; background-color:#f4f4f4;"^> >> %REPORT_FILE%
echo ^<h2^>💻 SYSTEM DIAGNOSTICS REPORT 💻^</h2^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%

:: 3. Run systeminfo and dump the data into the HTML file
:: This takes a few seconds to run
systeminfo >> %REPORT_FILE%

:: 4. Close the HTML pre tags
echo ^</pre^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%

:: 5. Add Field Glossary Section
echo ^<h3^>📖 Understanding Your System Report 📖^</h3^> >> %REPORT_FILE%
echo ^<ul style="list-style-type: none; padding-left: 0;"^> >> %REPORT_FILE%
echo ^<li^>🏷️ ^<b^>Host Name:^</b^> The name of your computer on the local network.^</li^> >> %REPORT_FILE%
echo ^<li^>🪟 ^<b^>OS Name / Version:^</b^> The specific edition and build of Windows you are running.^</li^> >> %REPORT_FILE%
echo ^<li^>🏭 ^<b^>System Manufacturer / Model:^</b^> The brand and hardware model of your PC or Motherboard.^</li^> >> %REPORT_FILE%
echo ^<li^>🖥️ ^<b^>System Type:^</b^> Indicates whether your PC is 64-bit (x64-based) or 32-bit (x86-based).^</li^> >> %REPORT_FILE%
echo ^<li^>🧠 ^<b^>Processor(s):^</b^> Details about your CPU (Central Processing Unit), its speed, and cores.^</li^> >> %REPORT_FILE%
echo ^<li^>⚙️ ^<b^>BIOS Version:^</b^> The low-level firmware version running on your motherboard.^</li^> >> %REPORT_FILE%
echo ^<li^>💾 ^<b^>Total Physical Memory:^</b^> The total amount of RAM installed. Used for active tasks.^</li^> >> %REPORT_FILE%
echo ^<li^>🟢 ^<b^>Available Physical Memory:^</b^> How much RAM is currently free and not being used.^</li^> >> %REPORT_FILE%
echo ^<li^>🗄️ ^<b^>Virtual Memory / Page File:^</b^> Hard drive storage used as backup RAM when physical RAM is full.^</li^> >> %REPORT_FILE%
echo ^<li^>📅 ^<b^>Original Install Date:^</b^> When this installation of Windows was first set up.^</li^> >> %REPORT_FILE%
echo ^<li^>⏱️ ^<b^>System Boot Time:^</b^> When the computer was last turned on or restarted.^</li^> >> %REPORT_FILE%
echo ^<li^>🌐 ^<b^>Network Card(s):^</b^> Your Wi-Fi, Ethernet, or Virtual adapters and their IP addresses.^</li^> >> %REPORT_FILE%
echo ^</ul^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%

:: 6. Add the footer and close the HTML tags
echo ^<p^>📅 Report generated on %date% at ⏰ %time%^</p^> >> %REPORT_FILE%
echo ^</body^> >> %REPORT_FILE%
echo ^</html^> >> %REPORT_FILE%

echo.
echo ✅ [SUCCESS] Report generated! 🎉
echo.
echo 🖨️ =================================================
echo 📄  INSTRUCTIONS TO SAVE AS PDF:
echo   1. 🌐 The report will open in your browser.
echo   2. ⌨️ Press Ctrl + P (Print).
echo   3. 💾 Select "Save as PDF" or "Microsoft Print to PDF".
echo 🖨️ =================================================
echo.
pause

:: 5. Open the file automatically   
start %REPORT_FILE%