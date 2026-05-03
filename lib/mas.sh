#!/usr/bin/env bash
# shellcheck shell=bash

install_mas_apps() {
  local mas_apps=(
    "411643860" # DaisyDisk
    "424389933" # FinalCutPro
    "1358823008" # Flighty
    "1502839586" # HandMirror
    "6446206067" # Klack
    "1532801185" # MyMind
    "897118787" # Shazam
  )

  if ! command -v mas >/dev/null 2>&1; then
    echo "Skipping Mac App Store installs; mas is not available"
    return
  fi

  local installed_app_ids
  if installed_app_ids="$(mas list 2>/dev/null | awk '{print $1}')"; then
    :
  else
    echo "Unable to read installed Mac App Store apps; continuing with installs"
    installed_app_ids=""
  fi

  local app_id
  for app_id in "${mas_apps[@]}"; do
    if grep -qx "${app_id}" <<< "${installed_app_ids}"; then
      echo "Skipping App Store app ${app_id}; already installed"
      continue
    fi

    if ! mas install "${app_id}"; then
      echo "Unable to install App Store app ${app_id}; confirm App Store access and rerun Genesis"
    fi
  done
}
