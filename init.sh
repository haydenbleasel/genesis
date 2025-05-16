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

# Install Brew Casks
brew_casks=(
  "1password-cli"
  "1password"
  "arc"
  "chatgpt"
  "cleanshot"
  "cursor"
  "discord"
  "docker"
  "figma"
  "github"
  "google-chrome"
  "granola"
  "imageoptim"
  "localcan"
  "nordvpn"
  "notion"
  "ollama"
  "pitch"
  "readdle-spark"
  "screen-studio"
  "signal"
  "slack"
  "spotify"
  "typefully"
  "visual-studio-code"
  "warp"
  "whatsapp"
  "windsurf"
  "zoom"
)

# Install each cask
for cask in "${brew_casks[@]}"; do
    brew install --cask "$cask"
done

# Create a map of app names to their Mac App Store IDs
declare -A mas_apps=(
  ["DaisyDisk"]="411643860"
  ["Final Cut Pro"]="424389933"
  ["Flighty"]="1358823008"
  ["Hand Mirror"]="1502839586"
  ["Klack"]="6446206067"
  ["MyMind"]="1520332347"
  ["Shazam"]="284993459"
  ["Sidus Link"]="1471951977"
)

# Install each app from Mac App Store
for app_name in "${!mas_apps[@]}"; do
    mas install "${mas_apps[$app_name]}"
done
