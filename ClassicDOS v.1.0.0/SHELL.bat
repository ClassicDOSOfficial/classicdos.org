@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
title ClassicDOS v1.0.0 Shell
color 02
cls
echo ================================================
echo   Welcome to ClassicDOS v1.0.0
echo ================================================
echo Type HELP for available commands.

:loop
set "CMD="
set /p CMD=ClassicDOS v1.0.0^> 
if not defined CMD goto loop

for /f "tokens=1* delims= " %%A in ("%CMD%") do (
  set "C=%%~A"
  set "ARGS=%%~B"
)

if /i "!C!"=="HELP" (
  echo.
  echo Available commands:
  echo   ABOUT       - Show system info
  echo   RESETKEY    - Reset product key
  echo   DATE        - Show current date
  echo   TIME        - Show current time
  echo   MKDIR       - Create directory
  echo   RMDIR       - Remove directory
  echo   DIR         - List files
  echo   COPY        - Copy files
  echo   TYPE        - View text file
  echo   SYSINFO     - Fake system info
  echo   CREDITS     - Show credits
  echo   MINESWEEPER - Play the game
  echo   README      - Generate and open the ClassicDOS manual
  echo   EXIT        - Exit ClassicDOS
  echo.
  goto loop
)

if /i "!C!"=="ABOUT"       call SYSTEM\COMMANDS\ABOUT.BAT
if /i "!C!"=="RESETKEY"    call SYSTEM\COMMANDS\RESETKEY.BAT
if /i "!C!"=="DATE"        call SYSTEM\COMMANDS\DATE.BAT
if /i "!C!"=="TIME"        call SYSTEM\COMMANDS\TIME.BAT
if /i "!C!"=="MKDIR"       call SYSTEM\COMMANDS\MKDIR.BAT !ARGS!
if /i "!C!"=="RMDIR"       call SYSTEM\COMMANDS\RMDIR.BAT !ARGS!
if /i "!C!"=="DIR"         call SYSTEM\COMMANDS\DIR.BAT !ARGS!
if /i "!C!"=="COPY"        call SYSTEM\COMMANDS\COPY.BAT !ARGS!
if /i "!C!"=="TYPE"        call SYSTEM\COMMANDS\TYPE.BAT !ARGS!
if /i "!C!"=="SYSINFO"     call SYSTEM\COMMANDS\SYSINFO.BAT
if /i "!C!"=="CREDITS"     call SYSTEM\COMMANDS\CREDITS.BAT
if /i "!C!"=="MINESWEEPER" call SYSTEM\COMMANDS\MINESWEEPER.BAT
if /i "!C!"=="README"      call SYSTEM\COMMANDS\README.BAT
if /i "!C!"=="EXIT"        goto exit

goto loop

:exit
echo Exiting ClassicDOS...
endlocal
exit /b