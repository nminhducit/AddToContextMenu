@echo off
setlocal

:: Prompt for application name and path
set /p appName=Enter the name for the context menu entry: 
set /p appPath=Enter the full path to the application (e.g., C:\Path\To\YourApp.exe): 

:: Verify that the file exists
if not exist "%appPath%" (
    echo The specified file does not exist.
    pause
    exit /b 1
)

:: Create registry entries
set "regPath=HKEY_CLASSES_ROOT\Directory\Background\shell\%appName%"
reg add "%regPath%" /ve /d "%appName%" /f
reg add "%regPath%\command" /ve /d "\"%appPath%\"" /f

echo The context menu entry has been successfully added.
pause
endlocal
exit /b 0
