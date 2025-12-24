@echo off
title Wi-Fi Password Revealer
color 0a
cls

echo ==================================================
echo      SAVED WI-FI PROFILES ON THIS COMPUTER
echo ==================================================
echo.

:: 1. List all known Wi-Fi networks
netsh wlan show profiles
echo.
echo ==================================================
echo.

:ask
echo Type the Wi-Fi name EXACTLY as it appears above.
set /p wifi_name="Target Wi-Fi Name: "

echo.
echo [!] SEARCHING DATABASE...
timeout /t 1 >nul
echo [!] DECRYPTING KEY...
timeout /t 1 >nul
echo.

:: 2. The Command that reveals the password   
echo --------------------------------------------------
echo             DETAILS FOR: %wifi_name%
echo --------------------------------------------------
netsh wlan show profile name="%wifi_name%" key=clear | findstr "Key Content"
echo --------------------------------------------------

echo.
echo Note: If "Key Content" is missing, you are not Admin.
echo.
pause