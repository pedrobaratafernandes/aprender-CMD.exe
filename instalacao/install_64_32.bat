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

if "%OP%" == "1" if %PROCESSOR_ARCHITECTURE% == AMD64 goto zip64 else goto zip32

if "%OP%" == "2" if %PROCESSOR_ARCHITECTURE% == AMD64 goto sumatra64 else goto sumatra32

if "%OP%" == "3" if %PROCESSOR_ARCHITECTURE% == AMD64 goto vlc64 else goto vlc32

if "%OP%" == "4" if %PROCESSOR_ARCHITECTURE% == AMD64 goto all64 else goto all32

if "%OP%" == "5" goto fim


:zip64
echo a instalar 7-zip versao %PROCESSOR_ARCHITECTURE%...
c:\instalacao\software\7z1900-x64.exe
pause
goto fim

:zip32
echo a instalar 7-zip versao %PROCESSOR_ARCHITECTURE% ...
c:\instalacao\software\7z1900.exe
pause
goto fim

:sumatra64
echo a instalar sumatra pdf 64 bits ...
c:\instalacao\software\SumatraPDF-3.1.2-install.exe
pause
goto fim

:sumatra32
echo a instalar sumatra pdf 32 bits ...
c:\instalacao\software\sumatra-pdf-3-2.exe
pause
goto fim

:vlc64
echo a instalar vlc 64 bits ...
c:\instalacao\software\vlc-3.0.11-win64.exe
pause
goto fim

:vlc32
echo a instalar vlc 32 bits ...
c:\instalacao\software\vlc-3.0.11-win32.exe
pause
goto fim

:all32
echo a instalar versao 32 bits...
c:\instalacao\software\7z1900.exe
c:\instalacao\software\vlc-3.0.11-win32.exe
c:\instalacao\software\sumatra-pdf-3-2.exe
pause
goto fim

:all64
echo a instalar versao 64 bits...
c:\instalacao\software\vlc-3.0.11-win32.exe
c:\instalacao\software\SumatraPDF-3.1.2-install.exe
c:\instalacao\software\vlc-3.0.11-win64.exe
pause
goto fim



GOTO INICIO
:FIM
echo fim
