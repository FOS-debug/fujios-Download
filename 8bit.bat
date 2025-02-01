::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: FUJIOS VERIFIED SCRIPT                                                         ::
:: ------------------------------------------------------------------------------ ::
:: Written by Emery Lightfoot with some debugging help and technique pointers from::
:: Chatgpt                                                                        ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:start
if exist "%userprofile%\appdata\roaming\FUJIOS\BOOTSEC.sys" (
    exit/b
) else (
    cls
    echo EXPLOIT DETECTED PLEASE RESTART IMMEDIATLY!
    echo If This Message Repeats After restarting 
    echo call Fuji Tech Support.
    pause
    taskkill /IM CMD.exe /F 
)

