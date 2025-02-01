::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: FUJIOS VERIFIED SCRIPT                                                         ::
:: ------------------------------------------------------------------------------ ::
:: Written by Emery Lightfoot with some debugging help and technique pointers from::
:: Chatgpt                                                                        ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
cls
set "mainfilepath=%userprofile%\appdata\roaming\FUJIOS"
if not exist %mainfilepath% mkdir %mainfilepath%


set "documentsFolder=%mainfilepath%"
set "SERTB=%RANDOM%-%RANDOM%"
set "AppDataFolder=%mainfilepath%"
set "filleName=kencr"
set "file1Name2=BOOTSEC.sys"
echo. > "%AppDataFolder%\%filleName%" %SERTB%
for /f %%i in ('type "%mainfilepath%\kencr"') do set "SERTB=%%i"


set "documentsFolder=%mainfilepath%"
if exist "%documentsFolder%\BOOTSEC.sys" (
    goto SAR
) else (
    goto NEQ
)
:SAR
exit/b

:NEQ
cls
echo Looks like this is
echo your first time using FujiOS
echo To Continue please enter your product key
echo %SERTB%
set /p choice=User Input: 

if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" neq "%SERTB%" goto NEQ1
if "%choice%" equ "%SERTB%" goto end112
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1
goto NEQ1

:NEQ1
set /a "count+=1
echo Uh Oh Incorrect
if %count% geq 5 goto LOCK
pause
cls 
goto NEQ

:LOCK
set "documentsPath=%mainfilepath%"
echo. > "%documentsPath%\BOOTSEC2"
goto NEQ

:end112
REM Set the path to the user's documents folder
set "documentsPath=%mainfilepath%"

REM Create BOOTSEC.sys file in the documents folder
echo Creating BOOTSEC.sys in %documentsPath%
echo. > "%documentsPath%\BOOTSEC.sys"

REM Check if BOOTSEC2 file exists and delete it
if exist "%documentsPath%\BOOTSEC2" (
    echo Deleting BOOTSEC2 in %documentsPath%
    del "%documentsPath%\BOOTSEC2"
) else (
    echo BOOTSEC2 not found in %documentsPath%
)

echo Operation completed.
pausetimeout /t 3 /NOBREAK >nul
EXIT/B


