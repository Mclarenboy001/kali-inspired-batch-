@echo off
title Kali Linux Inspired Command Line
color 0A

:loading
cls
echo ==================================================
echo               Loading Kali Linux CLI...
echo ==================================================
echo.
setlocal enabledelayedexpansion
set "spin=/-\|"
for /l %%a in (1,1,32) do (
    set /a i=%%a %% 4
    set "char=!spin:~%i%,1!"
    <nul set /p "=Please wait while the system initializes... !char!"
    timeout /t 0.25 >nul
    cls
    echo ==================================================
    echo               Loading Kali Linux CLI...
    echo ==================================================
    echo.
)
endlocal
goto welcome

:welcome
cls
echo ==================================================
echo                Welcome to Kali Linux CLI
echo ==================================================
echo.
echo Initializing...
timeout /t 2 /nobreak >nul
goto menu

:menu
cls
echo ==================================================
echo               Kali Linux Inspired CLI
echo ==================================================
echo.
echo Type `help` for a list of commands.
echo.
set /p command="> "

if "%command%"=="help" goto help
if "%command%"=="info" goto info
if "%command%"=="scan" goto scan
if "%command%"=="update" goto update
if "%command%"=="ram" goto ram
if "%command%"=="disk" goto disk
if "%command%"=="processes" goto processes
if "%command%"=="ipconfig" goto ipconfig
if "%command%"=="ping" goto ping
if "%command%"=="date" goto date
if "%command%"=="time" goto time
if "%command%"=="tasklist" goto tasklist
if "%command%"=="hostname" goto hostname
if "%command%"=="username" goto username
if "%command%"=="system" goto system
if "%command%"=="network" goto network
if "%command%"=="uptime" goto uptime
if "%command%"=="netusage" goto netusage
if "%command%"=="exit" exit
echo Invalid command. Type `help` to see the list of commands.
pause
goto menu

:help
cls
echo ==================================================
echo                       Help Menu
echo ==================================================
echo.
echo info       - Displays system information.
echo scan       - Performs a network scan.
echo update     - Simulates an update process.
echo ram        - Displays RAM usage.
echo disk       - Checks disk space.
echo processes  - Lists running processes.
echo ipconfig   - Displays network configuration.
echo ping       - Pings a specified IP address.
echo date       - Shows the current date.
echo time       - Shows the current time.
echo tasklist   - Lists all running tasks.
echo hostname   - Displays the hostname.
echo username   - Displays the current username.
echo system     - Shows detailed system information.
echo network    - Checks network status.
echo uptime     - Shows system uptime.
echo netusage   - Displays network usage statistics.
echo help       - Shows this help menu.
echo exit       - Exits the CLI.
pause
goto menu

:info
cls
echo ==================================================
echo               System Information
echo ==================================================
echo.
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
pause
goto menu

:scan
cls
echo ==================================================
echo                 Network Scan
echo ==================================================
echo.
echo Simulating a network scan...
:: Simulate a scan by pinging a common IP (e.g., Google's DNS)
ping -n 3 8.8.8.8
echo.
echo Scan complete.
pause
goto menu

:update
cls
echo ==================================================
echo                   System Update
echo ==================================================
echo.
echo Updating system directories...
:: Simulate directory updates
setlocal enabledelayedexpansion
for %%i in (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) do (
    echo C:\adams_kali\update\directory_%%i
    timeout /t 1 /nobreak >nul
)
endlocal
echo.
echo Update complete.
pause
goto menu

:ram
cls
echo ==================================================
echo                 RAM Usage
echo ==================================================
echo.
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Format:List
pause
goto menu

:disk
cls
echo ==================================================
echo                 Disk Space
echo ==================================================
echo.
wmic logicaldisk get size,freespace,caption
pause
goto menu

:processes
cls
echo ==================================================
echo             Running Processes
echo ==================================================
echo.
tasklist
pause
goto menu

:ipconfig
cls
echo ==================================================
echo           Network Configuration
echo ==================================================
echo.
ipconfig
pause
goto menu

:ping
cls
echo ==================================================
echo                   Ping Test
echo ==================================================
echo.
set /p ip="Enter IP address to ping: "
ping %ip%
pause
goto menu

:date
cls
echo ==================================================
echo                   Current Date
echo ==================================================
echo.
date /t
pause
goto menu

:time
cls
echo ==================================================
echo                   Current Time
echo ==================================================
echo.
time /t
pause
goto menu

:tasklist
cls
echo ==================================================
echo                 Task List
echo ==================================================
echo.
tasklist
pause
goto menu

:hostname
cls
echo ==================================================
echo                  Hostname
echo ==================================================
echo.
hostname
pause
goto menu

:username
cls
echo ==================================================
echo                Current User
echo ==================================================
echo.
echo %username%
pause
goto menu

:system
cls
echo ==================================================
echo             Detailed System Info
echo ==================================================
echo.
systeminfo
pause
goto menu

:network
cls
echo ==================================================
echo                Network Status
echo ==================================================
echo.
netstat
pause
goto menu

:uptime
cls
echo ==================================================
echo                System Uptime
echo ==================================================
echo.
net statistics workstation | find "Statistics since"
pause
goto menu

:netusage
cls
echo ==================================================
echo               Network Usage Statistics
echo ==================================================
echo.
netstat -e
pause
goto menu

