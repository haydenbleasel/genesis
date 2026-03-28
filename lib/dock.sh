configure_dock() {
  local dock_items=(
    "/System/Applications/Calendar.app"
    "/System/Applications/Notes.app"
    "/Applications/Google Chrome.app"
    "/Applications/Warp.app"
    "/Applications/Cursor.app"
    "/Applications/GitHub Desktop.app"
    "/Applications/Typefully.app"
    "/Applications/Slack.app"
    "/Applications/Spark Desktop.app"
    "/Applications/Signal.app"
    "/Applications/Discord.app"
    "/System/Applications/Messages.app"
    "/Applications/ChatGPT.app"
    "/Applications/Codex.app"
  )

  if ! command -v dockutil >/dev/null 2>&1; then
    echo "Skipping Dock configuration; dockutil is not available"
    return
  fi

  echo "Configuring Dock..."
  dockutil --remove all --no-restart

  local app_path
  for app_path in "${dock_items[@]}"; do
    if [[ ! -d "${app_path}" ]]; then
      echo "Skipping Dock item ${app_path}; app not found"
      continue
    fi

    dockutil --add "${app_path}" --no-restart
  done

  killall Dock
}
