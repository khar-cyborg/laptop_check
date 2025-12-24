@echo off
title MATRIX_CORE_DUMP
color 0a
mode con: cols=100 lines=40

:start
:: %random% generates a random number. We chain them to look like code.
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto start