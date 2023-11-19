@echo off 
title PC CLEANER MADE BY DARK
cls

::_____________________________
set "farbe1=4"  :: Rot
set "farbe2=2"  :: Grün
set "farbe3=3"  :: blau
set "farbe3=5"  :: lila
::_____________________________

:: Überprüfen, ob das Skript mit Administratorrechten gestartet wurde
NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo.
    echo.
    echo.
    echo.
    color 4
    echo                                           starte das Skript als Administrator!
    echo.
    echo.
    echo.
    echo.
    echo                                        EEEEEEE RRRRRR  RRRRRR   OOOOO  RRRRRR  
    echo                                        EE      RR   RR RR   RR OO   OO RR   RR 
    echo                                        EEEEE   RRRRRR  RRRRRR  OO   OO RRRRRR  
    echo                                        EE      RR  RR  RR  RR  OO   OO RR  RR  
    echo                                        EEEEEEE RR   RR RR   RR  OOOO0  RR   RR 
    echo						test test neue version 
    pause >nul
    goto :eof
)

:: Skript Passwort <--

:password
setlocal
set password=1510

color 3
echo.
echo.
echo.
echo.
echo.
echo 						gebe das Password ein:

echo ======================================================================================================================
set/p input=

if "%input%" == "%password%" (
    color 2
    echo 				      Richtig du wirst nun zum Panel Weitergeleitet !
    timeout 3 >nul
    cls
    goto main
) else ( 
    color 4
    echo 						  Falsches Password!
    pause >nul
    cls
    goto password
)

:main
color d
echo 			d8888b.  .o88b.       .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b.
echo 			88  `8D d8P  Y8      d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo 			88oodD' 8P           8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo 			88~~~   8b           8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo 			88      Y8b  d8      Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo 			88       `Y88P'       `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD
echo.
echo.
echo                                                        made by dark 
echo.
echo.
echo.
echo.
echo.

echo                                            [1] - IP CONFIG          [6] - FPS TEST
echo.
echo                                            [2] - Temp Clean         [7] - Fehler Beheben (Festplatte)
echo.
echo                                            [3] - Papierkorb Clean   [8] - Leere Ordner Cleanen
echo.
echo                                            [4] - Internet Testen    [9] - Discord
echo.
echo                                            [5] - PC SCANNEN         [10] - DNS - CACHE Cleanen            
echo.
echo.
echo.
echo                                                             [11] = seite 2                                                   

:menu
set /p choice=Deine Option?: 

if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="3" goto 3
if "%choice%"=="4" goto 4
if "%choice%"=="5" goto 5
if "%choice%"=="6" goto 6
if "%choice%"=="7" goto 7
if "%choice%"=="8" goto 8
if "%choice%"=="9" goto 9
if "%choice%"=="10" goto 10
if "%choice%"=="11" goto seitezwei

::  Seite 2

:seitezwei
color 3
cls
echo 			d8888b.  .o88b.       .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b.
echo 			88  `8D d8P  Y8      d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo 			88oodD' 8P           8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo 			88~~~   8b           8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo 			88      Y8b  d8      Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo 			88       `Y88P'       `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD
echo.
echo.
echo                                                        Seite 2 
echo.
echo.
echo.
echo.
echo.
echo                                            [12] - Prozesse Beenden
echo.
echo                                            [13] - Virus Check
echo.
echo                                            [14] - Bilder Clean

:menu2
set /p choice=Deine Option?: 

if "%choice%"=="12" goto seitezweinr12
if "%choice%"=="13" goto seitezweinr13
if "%choice%"=="14" goto seitezweinr14


:: seite 2 geschlossen ----------------------------------------------------------------------------------------

:1
echo ein Moment...
timeout 2 >nul
cls
ipconfig /all
pause >nul
cls
goto main

:2
echo ein Moment...
timeout 2 >nul
cls
rmdir /Q /S %temp% && mkdir %temp%
pause >nul
cls
goto main

:3
echo ein Moment...
timeout 2 >nul
cls
rd /s /q C:\$Recycle.Bin
echo Papierkorb wurde erfolgreich geleert.
pause >nul
cls
goto :main

:4
echo ein Moment...
timeout 2 >nul
cls
echo Deine Internetverbindung wird Getestet !
ping 8.8.8.8
pause >nul
cls
goto main

:5
echo ein Moment...
timeout 2 >nul
cls

echo PC WIRD GESCANNT
sfc /scannow
pause >nul
cls
goto main

:6
echo ein Moment...
timeout 2 >nul
cls
start https://www.testufo.com/
cls
goto main

:7
echo ein Moment...
timeout 2 >nul
cls
chkdsk /f
pause >nul
cls
goto main

:8
echo ein Moment...
timeout 2 >nul
cls
set "desktopPath=%USERPROFILE%\Desktop"

powershell -Command "Get-ChildItem -Path '%desktopPath%' | Where-Object { $_.PSIsContainer -and @(Get-ChildItem -LiteralPath $_.FullName -File).Count -eq 0 } | ForEach-Object { Remove-Item -LiteralPath $_.FullName -Force -Recurse }"
color 2
echo Abgeschlossen alle Ordner wurden Erfolgreich Entfernt auf ihrem Desktop!
pause >nul
cls
goto main

:9
echo ein Moment...
timeout 2 >nul
cls
start https://discord.gg/qaPbvvBj4J
pause >nul
cls
goto main

:10
echo ein Moment...
timeout 2 >nul
cls
ipconfig /flushdns
pause >nul
cls
goto main

:: Seite 2 --------

:seitezweinr12
echo ein Moment...
timeout 2 >nul
cls
taskkill /F /FI "STATUS eq RUNNING" /FI "USERNAME ne NT-AUTORITÄT\SYSTEM"
pause >nul
cls
goto main
:: seite 2 close -----

:seitezweinr13
echo ein Moment...
timeout 2 >nul
cls
echo Aktualisiere Windows Defender-Signaturen...
powershell -Command "Update-MpSignature"

echo.
echo Führe einen vollständigen Virenscan mit Windows Defender durch...
powershell -Command "Start-MpScan -ScanType FullScan"

echo.
echo Überprüfung abgeschlossen.
pause >nul
cls
goto main
:: seite 2 close -----

:seitezweinr14
echo ein Moment...
timeout 2 >nul
cls
set "benutzerprofil=%USERPROFILE%"
set "dateierweiterungen=*.jpg *.jpeg *.png *.gif *.bmp"

for /r "%benutzerprofil%" %%i in (%dateierweiterungen%) do (
    powershell -Command Write-Host "PC CLEANER Entfernt:  %%i" -ForegroundColor Blue
    del "%%i" /f /q
)

powershell -Command Write-Host "Alle Bilder wurden Entfernt!" -ForegroundColor Red
pause >nul
cls
goto main


