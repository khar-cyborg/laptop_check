@echo off
title System Info to PDF Converter
color 1f

echo =================================================
echo      GENERATING SYSTEM REPORT... PLEASE WAIT
echo =================================================

:: 1. Define the filename
set "REPORT_FILE=System_Report.html"

:: 2. Create the HTML Header (To make it look nice)
echo ^<html^> > %REPORT_FILE%
echo ^<body style="font-family:Courier New; background-color:#f4f4f4;"^> >> %REPORT_FILE%
echo ^<h2^>SYSTEM DIAGNOSTICS REPORT^</h2^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%
echo ^<pre^> >> %REPORT_FILE%

:: 3. Run systeminfo and dump the data into the HTML file
:: This takes a few seconds to run
systeminfo >> %REPORT_FILE%

:: 4. Close the HTML tags
echo ^</pre^> >> %REPORT_FILE%
echo ^<hr^> >> %REPORT_FILE%
echo ^<p^>Report generated on %date% at %time%^</p^> >> %REPORT_FILE%
echo ^</body^> >> %REPORT_FILE%
echo ^</html^> >> %REPORT_FILE%

echo.
echo [SUCCESS] Report generated!
echo.
echo =================================================
echo   INSTRUCTIONS TO SAVE AS PDF:
echo   1. The report will open in your browser.
echo   2. Press Ctrl + P (Print).
echo   3. Select "Save as PDF" or "Microsoft Print to PDF".
echo =================================================
echo.
pause

:: 5. Open the file automatically   
start %REPORT_FILE%