@echo off
:INICIO
cls
echo 1 - os
echo 2 - user name
echo 3 - processor architecture
echo 4 - user domain
echo 5 - sair
echo.
set /P OP=escolha uma opcao:

if "%OP%" == "1" echo %OS%

if "%OP%" == "2" echo %USERNAME%

if "%OP%" == "3" echo %PROCESSOR_ARCHITECTURE%

if "%OP%" == "4" echo %USERDOMAIN%
pause

if "%OP%" == "5" goto fim

GOTO INICIO
:FIM
echo fim
