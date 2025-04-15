#!/bin/bash

# Codefire React App Setup Script for Mac/Linux
echo "===== Starting Codefire React App Setup for Mac/Linux ====="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js before proceeding."
    echo "Visit https://nodejs.org/en/download/ to download and install Node.js."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d 'v' -f 2)
echo "Node.js version detected: $NODE_VERSION"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install npm before proceeding."
    exit 1
fi

# Check npm version
NPM_VERSION=$(npm -v)
echo "npm version detected: $NPM_VERSION"

# Navigate to project root (in case script is run from another directory)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

echo "===== Installing dependencies ====="
npm install

echo "===== Testing the app setup ====="
# Try to start the app
echo "Attempting to start the app for 5 seconds to test the setup..."
timeout 5s npm start || {
    if [ $? -eq 124 ]; then
        echo "App started successfully (timed out after 5 seconds as expected)."
    else
        echo "Warning: There was an issue starting the app."
    fi
}

echo ""
echo "===== Setup Complete! ====="
echo "To run the app, use: npm start"
echo "This will start the development server at http://localhost:3000"
echo "" 