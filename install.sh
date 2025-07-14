#!/bin/bash

set -e  # Exit on any error

echo "🔧 Installing Guts via Homebrew..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "❌ Homebrew is not installed. Please install it first:"
    echo "   /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

# Update Homebrew
echo "🔄 Updating Homebrew..."
brew update

# Install Guts
echo "📦 Installing Guts..."
if brew install Oomaxime/guts/guts; then
    echo "✅ Guts installed successfully!"
    echo "🚀 You can now use 'guts --help' to get started."
else
    echo "❌ Installation failed. Please check the error messages above."
    exit 1
fi
