#!/usr/bin/env bash
# shellcheck shell=bash

configure_defaults() {
  echo "Configuring macOS defaults..."

  # Finder: default to column view
  defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

  # Dock: tile size
  defaults write com.apple.dock tilesize -int 61

  # Dock: minimize windows into the application icon
  defaults write com.apple.dock minimize-to-application -bool true

  # Dock: hide recent applications
  defaults write com.apple.dock show-recents -bool false

  # Trackpad: max tracking speed
  defaults write NSGlobalDomain com.apple.trackpad.scaling -float 3

  # Don't write .DS_Store on network or USB volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

  killall Finder >/dev/null 2>&1 || true
  killall Dock >/dev/null 2>&1 || true
}
