@echo off
:INICIO
cls
echo 1 - 7-zip
echo 2 - sumatra pdf
echo 3 - vlc player
echo 4 - instalar todos
echo 5 - sair
echo.
set /P OP=escolha uma opcao:

if "%OP%" == "1" goto zip

if "%OP%" == "2" goto sumatra

if "%OP%" == "3" goto vlc

if "%OP%" == "4" goto install_all

if "%OP%" == "5" goto fim


:zip
echo a instalar 7-zip ...
c:\instalacao\software\7z1900-x64.exe
pause
goto fim

:sumatra
echo a instalar sumatra pdf ...
c:\instalacao\software\sumatra-pdf-3-2.exe
pause
goto fim

:vlc
echo a instalar vlc ...
c:\instalacao\software\vlc-3.0.11-win32.exe
pause
goto fim

:install_all
echo a instalar todos ...
c:\instalacao\software\7z1900-x64.exe
c:\instalacao\software\sumatra-pdf-3-2.exe
c:\instalacao\software\vlc-3.0.11-win32.exe
pause
goto fim


:FIM
echo fim de batch file