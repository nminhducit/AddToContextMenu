@echo off
setlocal

:: Author Information
echo =====================================
echo    Script developed by NMINHDUCIT
echo =====================================
echo.

:menu
cls
echo =====================================
echo              MAIN MENU
echo =====================================
echo 1. Add application to context menu
echo 2. Restore old Windows 10 context menu
echo 3. Exit
echo =====================================
set /p choice=Enter your choice (1/2/3): 

if "%choice%"=="1" goto add_app
if "%choice%"=="2" goto restore_menu
if "%choice%"=="3" goto exit

:add_app
cls
echo =====================================
echo   ADD APPLICATION TO CONTEXT MENU
echo =====================================
:: Prompt for application name, path, and icon
set /p appName=Enter the name for the context menu entry: 
set /p appPath=Enter the full path to the application (e.g., C:\Path\To\YourApp.exe): 
set /p iconPath=Enter the full path to the icon file (e.g., C:\Path\To\Icon.ico): 

:: Verify that the file exists
if not exist "%appPath%" (
    echo The specified application file does not exist.
    pause
    goto menu
)

if not exist "%iconPath%" (
    echo The specified icon file does not exist.
    pause
    goto menu
)

:: Create registry entries
set "regPath=HKEY_CLASSES_ROOT\Directory\Background\shell\%appName%"
reg add "%regPath%" /ve /d "%appName%" /f
reg add "%regPath%" /v "Icon" /d "%iconPath%" /f
reg add "%regPath%\command" /ve /d "\"%appPath%\"" /f

echo =====================================
echo The context menu entry with icon has been successfully added.
echo =====================================
pause
goto menu

:restore_menu
cls
echo =====================================
echo  RESTORE OLD WINDOWS 10 CONTEXT MENU
echo =====================================
:: Add registry entry to restore old Windows 10 context menu
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

echo =====================================
echo The old Windows 10 context menu has been restored.
echo Please restart your computer for the changes to take effect.
echo =====================================
pause
goto menu

:exit
cls
echo =====================================
echo            THANK YOU
echo         FOR USING MY SCRIPT
echo =====================================
pause
endlocal
exit /b 0
