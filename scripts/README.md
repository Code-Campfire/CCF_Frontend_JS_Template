# Setup Scripts for Codefire React App

This folder contains scripts to help you quickly set up the Codefire React App development environment.

## For Mac/Linux Users

1. Open a terminal
2. Navigate to the project root directory
3. Run the setup script:
   ```
   ./scripts/setup-mac.sh
   ```
4. If you encounter permission issues, you might need to make the script executable:
   ```
   chmod +x scripts/setup-mac.sh
   ```

## For Windows Users

1. Open a command prompt or PowerShell
2. Navigate to the project root directory
3. Run the setup script:
   ```
   scripts\setup-windows.bat
   ```

## What These Scripts Do

Both scripts perform the following tasks:
- Check if Node.js and npm are installed
- Display the detected Node.js and npm versions
- Install all dependencies using npm
- Attempt to start the app briefly to test the setup
- Display instructions for running the app after setup

## Requirements

- Node.js (version 16 or higher recommended)
- npm (usually comes with Node.js)

If you don't have Node.js installed, please visit https://nodejs.org/ to download and install it before running these scripts. 