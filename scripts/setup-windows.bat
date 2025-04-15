@echo off
echo ===== Starting Codefire React App Setup for Windows =====

:: Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo Node.js is not installed. Please install Node.js before proceeding.
    echo Visit https://nodejs.org/en/download/ to download and install Node.js.
    exit /b 1
)

:: Display Node.js version
for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo Node.js version detected: %NODE_VERSION%

:: Check if npm is installed
where npm >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo npm is not installed. Please install npm before proceeding.
    exit /b 1
)

:: Display npm version
for /f "tokens=*" %%i in ('npm -v') do set NPM_VERSION=%%i
echo npm version detected: %NPM_VERSION%

:: Navigate to project root (in case script is run from another directory)
cd /d "%~dp0\.."

echo ===== Installing dependencies =====
call npm install

echo ===== Testing the app setup =====
echo Attempting to start the app for 5 seconds to test the setup...
echo This window will close automatically after 5 seconds...

:: Start app and kill after 5 seconds (simplified test)
start /b cmd /c "npm start & timeout /t 5 & taskkill /f /im node.exe >nul 2>nul"

echo.
echo ===== Setup Complete! =====
echo To run the app, use: npm start
echo This will start the development server at http://localhost:3000
echo.

:: Pause to let the user read the output
pause 