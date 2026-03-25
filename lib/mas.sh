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

  if ! mas account >/dev/null 2>&1; then
    echo "Skipping Mac App Store installs; sign in to the App Store and rerun Genesis"
    return
  fi

  local installed_app_ids
  installed_app_ids="$(mas list | awk '{print $1}')"

  local app_id
  for app_id in "${mas_apps[@]}"; do
    if grep -qx "${app_id}" <<< "${installed_app_ids}"; then
      echo "Skipping App Store app ${app_id}; already installed"
      continue
    fi

    mas install "${app_id}"
  done
}
