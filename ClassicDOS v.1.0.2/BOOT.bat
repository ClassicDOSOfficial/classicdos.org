@echo off
title ClassicDOS v.1.0.1 Boot Sequence
setlocal enabledelayedexpansion
color 1F

:start
echo ------------------------------------------
echo       CLASSICDOS V.1.0.1 PROFESSIONAL
echo              Boot Sequence
echo ------------------------------------------
timeout /t 3 >nul
 



:boot
echo [START] Starting Boot Sequence...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\VALIDATE.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\ABOUT.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\COPY.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\CREDITS.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\DATE.BAT
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\DIR.BAT...
timeout /t 1 >nul 
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\MD.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\MINESWEEPER.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\MKDIR.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\README.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\RESETKEY.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\RD.BAT
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\RMDIR.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\SYSINFO.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\TIME.BAT...
timeout /t 1 >nul
echo [CHKDSK] Checking for ClassicDOS LK\SYSTEM\COMMANDS\TYPE.BAT...
timeout /t 1 >nul
echo [OK] Boot Sequence was successful. Starting ClassicDOS...
timeout /t 1 >nul
 



:end
echo Boot Sequence was Successful. Starting ClassicDOS v.1.0.1 Pro...
call DESKTOP.BAT

:NEWPROJECT
call NEWPROJECT.html



