@echo off
title DUNGEON_OF_CODE_FIXED
color 0c
mode con: cols=60 lines=25

:start
cls
echo.
echo.
:: Fixed the sword art below by adding ^ before every |  
echo       /^| ________________
echo   O^|===^|* ^>________________^>
echo       \^|
echo.
echo    WELCOME TO THE DUNGEON.
echo    You are standing at a crossroad.
echo.
echo    1. Go Left (Dark Tunnel)
echo    2. Go Right (Lighted Hallway)
echo.
set /p choice="> TYPE 1 or 2: "

if "%choice%"=="1" goto tunnel
if "%choice%"=="2" goto hallway
goto start

:tunnel
cls
echo.
echo    You walk into the dark...
echo    Suddenly, spikes shoot from the floor!
echo.
echo    [ GAME OVER ]
echo    You fell into a trap.
echo.
pause
goto start

:hallway
cls
echo.
echo    You find a GOBLIN guarding a chest!
echo    It has 10 HP.
echo.
echo        (o,o)
echo        {___}
echo        -"-"-
echo.
echo    1. Attack with Sword
echo    2. Run away
echo.
set /p fight="> ACTION: "

if "%fight%"=="1" goto win
if "%fight%"=="2" goto coward
goto hallway

:coward
cls
echo.
echo    You ran away and tripped over a rock.
echo    [ GAME OVER ]
echo.
pause
goto start

:win
cls
color 0a
echo.
echo    POW! You defeated the Goblin!
echo    You open the chest...
echo.
echo    It contains: A RARE GOLDEN CPU!
echo.
echo    [ YOU WIN ]
echo.
pause
color 0c
goto start