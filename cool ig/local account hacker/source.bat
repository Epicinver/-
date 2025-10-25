@echo off
title local account hacker (by arran :] )

:verify
cls
set /p verification=Please enter "hello" to launch the local acc hacker: 
if /I not "%verification%"=="hello" goto menu

:menu
cls
echo ((((()))))
echo    MENU
echo ((((()))))
echo.
echo Type "list" to view all users.
echo 1) Change password of a user
echo 2) Delete a user
echo 3) Add a user
echo 4) Exit
echo.
set /p input=Enter your choice: 

if /I "%input%"=="list" (
    cls
    net user
    pause
    goto menu
)

if "%input%"=="1" (
    cls
    set /p username=Enter username: 
    set /p password=Enter new password: 
    net user "%username%" "%password%"
    echo Done! Password updated for %username%. New password: %password%
    pause
    goto menu
)

if "%input%"=="2" (
    cls
    set /p username=Enter username to delete: 
    net user "%username%" /delete
    echo %username% has been deleted.
    pause
    goto menu
)

if "%input%"=="3" (
    cls
    set /p username=Enter new username: 
    set /p password=Enter password: 
    net user "%username%" "%password%" /add
    echo %username% has been added. Use %password% to sign in.
    pause
    goto menu
)

if "%input%"=="4" (
    exit
)

goto menu
