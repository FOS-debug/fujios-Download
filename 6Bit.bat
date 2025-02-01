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
set "backuptime=%time%"
set "errl=0"
set "ErrorLevel43=0"
for /f %%i in ('type "icd.ini"') do set "targetNumber=%%i"
if "%targetNumber%"  equ "1121" goto Start
echo Boot Error 15
echo ErrBoot %DATE% %TIME% >> Bootlog.log
start fds.bat
if "%targetNumber%"  neq "1121" set "errl=1"
if "%targetNumber%"  neq "1121" goto Exit
goto Start

:Start
for /f %%i in ('type "settings.ini"') do set "targetNumber=%%i"
echo %targetNumber% %targetNumber% %targetNumber%
if "%targetNumber%"  equ "111" goto 1
if "%targetNumber%"  equ "000" goto 2
if "%targetNumber%"  equ "101" goto Check2
if "%targetNumber%"  equ "010" goto 4
if "%targetNumber%"  equ "001" goto 5
if "%targetNumber%"  equ "100" goto 6
if "%targetNumber%"  equ "110" goto EfCHK
if "%targetNumber%"  equ "011" goto 8
set /a ErrorLevel43+=1
if %ErrorLevel43% geq 40 goto FATALERROR
if %ErrorLevel43% geq 42 start fds.bat
echo %random%%time% >> icd.ini
color 1F
@echo on

goto Start
:Check2
for /f %%i in ('type "settings2.ini"') do set "targetNumber=%%i"
echo %targetNumber% %targetNumber% %targetNumber%
if "%targetNumber%"  equ "001" goto S1
if "%targetNumber%"  equ "111" goto 12
if "%targetNumber%"  equ "000" goto S2
if "%targetNumber%"  equ "101" goto 32
if "%targetNumber%"  equ "010" goto 42
set /a ErrorLevel43+=1
echo %random%%time% >> icd.ini
color 1F
@echo on
goto Check2

:S2
echo %targetNumber% Break %targetNumber%
set "valid_AuthCode=10112"
Goto S12

:EfCHK
echo > settings.ini
echo 100 > icd.ini
echo 101 >> settings.ini
echo 110 >> settings.ini
echo 101 >> settings.ini
echo 110 >> settings.ini
echo 100 >> settings.ini
echo 101 >> settings.ini
echo 110 >> settings.ini
echo 100 >> settings.ini
echo 100 >> settings.ini
echo 101 >> icd.ini
echo 101 >> icd.ini
set "documentsPath=%mainfilepath%"
echo. > "%documentsPath%\Bootifier.dll"
exit/b

:S1
echo %targetNumber%       %targetNumber%
set "valid_AuthCode=1011"
goto S12

:S12
echo %targetNumber% Softcode Check
set "ErrorL=0"
set "MaxErr=2"
set "MaxxErr=3"
set "MaxxxErr=10"
echo QCD PASS
set "userFolder=%mainfilepath%"
set "docFolder=%userFolder%\USERdocuments"
rem Create USERdocuments folder if not exists
if not exist "%docFolder%" mkdir "%docFolder%"
set "playerScore=0"
echo QCD PASS
set "computerScore=0"
set /p timezone=<%userFolder%\time.pkg
set /p valid_username=<%userFolder%\user.pkg
set /p valid_password=<%userFolder%\pass.pkg
echo QCD PASS
set /p bsodtype=<%userFolder%\bsodtype.pkg
set /p colr=<colr.pkg
set "err2l=1"
echo SuccessBoot %DATE% %TIME% >> Bootlog.log
set "varchck=VariablesPassed"
echo QCD PASS
if exist HIBERNATE.log del HIBERNATE.log
goto EXIT

:Error
cls
echo Error
type settings.ini
pause>nul
goto Error

:FATALERROR
@echo off
echo.
echo.
echo.
echo.
echo.
echo FATAL ERROR
echo FATAL ERROR LEVEL: %ErrorLevel43%
echo.
start fds.bat
pause
goto Start

:EXIT
echo.
echo.
echo.
timeout /t 1 /NOBREAK >nul
exit/b
exit/b
exit/b
exit/b
exit/b
exit/b
