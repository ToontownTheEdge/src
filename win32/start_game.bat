@echo off
title Toontown: The Edge Console
echo.UPDATING CLIENT THIS MAY TAKE A MINUTE
cd C:/repos/resources
git pull origin master --quiet
echo.RESOURCES ARE DONE UPDATING...NOW SYSTEM FILES
cd C:/repos/src --quiet
git pull origin master
cls
echo.DONE UPDATING
echo.
echo.

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttiUsername="Username: "
set /P TTI_GAMESERVER="Gameserver (DEFAULT: 192.168.1.38): " || ^
set TTI_GAMESERVER=192.168.1.38

rem Export the environment variables:
set ttiPassword=password
set TTI_PLAYCOOKIE=%ttiUsername%

echo ===============================
echo Starting Toontown: The Edge...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause
