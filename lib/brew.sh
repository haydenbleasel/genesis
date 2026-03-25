install_brew_libs() {
  local brew_libs=(
    "btop"
    "oven-sh/bun/bun"
    "dockutil"
    "ffmpeg"
    "git"
    "git-lfs"
    "mas"
    "pnpm"
    "stripe"
  )

  local tool
  for tool in "${brew_libs[@]}"; do
    if brew list "${tool}" >/dev/null 2>&1; then
      echo "Skipping ${tool}; already installed"
      continue
    fi

    brew install "${tool}"
  done
}
