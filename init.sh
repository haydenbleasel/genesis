#!/usr/bin/env bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install Brew libs
brew_libs=(
  "btop"
  "ffmpeg"
  "git-lfs"
  "git"
  "gource"
  "mas"
  "stripe"
  "supabase"
)

# Install each tool
for tool in "${brew_libs[@]}"; do
    brew install "$tool"
done

