@echo off
color 0c
echo ==========================================
echo      CLEANING TEMPORARY FILES...
echo ==========================================

:: Deletes files in the User Temp folder
del /q /f /s %temp%\*
rd /s /q %temp%

:: Deletes Windows Prefetch files (Requires Admin)
echo.
echo Note: Some files may be in use and cannot be deleted. This is normal.
echo.

echo Cleanup Complete!
pause