@echo off
setlocal EnableDelayedExpansion
:: Define ESC character for ANSI colors
for /F "delims=#" %%E in ('"prompt #$E# & for %%E in (1) do rem"') do set "ESC=%%E"

:: Colors (16-bit ANSI)
set "C_PURPLE=%ESC%[35m"
set "C_AMBER=%ESC%[33m"
set "C_CYAN=%ESC%[36m"
set "C_GRAY=%ESC%[90m"
set "RESET=%ESC%[0m"

title NET_SYS :: WI-FI OVERRIDE // TERM_v2.0
cls

:menu
cls
echo %C_CYAN%********************************************************************************%RESET%
echo %C_PURPLE%    _   _   ___   _____          ___   _   _   ___ 
echo   ^| \ ^| ^| ^| __^| ^|_   _^|        / __^| ^| \_/ ^| / __^|
echo   ^|  \^| ^| ^| _^|    ^| ^|   %C_AMBER%------%C_PURPLE% \__ \  \_/  \__ \
echo   ^|_^|\_^| ^|___^|   ^|_^|          ^|___/   ^| ^|  ^|___/
echo %C_CYAN%********************************************************************************%RESET%
echo %C_AMBER%              [ LOCAL NETWORK PROFILE DECRYPTION MATRIX ]%RESET%
echo %C_CYAN%********************************************************************************%RESET%
echo.

:: 1. List all known Wi-Fi networks
echo %C_PURPLE%[!] SCANNING LOCAL DATA NODES...%RESET%
echo.
netsh wlan show profiles
echo.
echo %C_CYAN%--------------------------------------------------------------------------------%RESET%
echo.

:ask
echo %C_AMBER%^> ENTER IDENTIFIER EXACTLY AS SHOWN ABOVE%RESET%
set /p wifi_name="%C_PURPLE%NET_SYS_PROMPT$ %RESET%"

echo.
echo %C_CYAN%[+] ESTABLISHING UPLINK...%RESET%
timeout /t 1 >nul
echo %C_CYAN%[+] BYPASSING SECURITY PROTOCOLS...%RESET%
timeout /t 1 >nul
echo.

:: 2. The Command that reveals the password   
echo %C_PURPLE%================================================================================%RESET%
echo %C_AMBER%                      PAYLOAD DB // %wifi_name%%RESET%
echo %C_PURPLE%================================================================================%RESET%
netsh wlan show profile name="%wifi_name%" key=clear | findstr "Key Content"
echo %C_PURPLE%================================================================================%RESET%

echo.
echo %C_GRAY%Note: ACCESS DENIED if Administrator privileges are not detected.%RESET%
echo.

:prompt_again
set "choice="
set /p choice="%C_AMBER%^> QUERY ANOTHER NODE? [Y/N]: %RESET%"
if /I "%choice%"=="Y" (
    goto menu
)
if /I "%choice%"=="N" (
    echo.
    echo %C_PURPLE%[!] TERMINATING CONNECTION...%RESET%
    timeout /t 1 >nul
    exit /b
)
echo %C_CYAN%[ERROR] INVALID SYNTAX.%RESET%
goto prompt_again