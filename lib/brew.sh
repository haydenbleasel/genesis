brew_libs=(
  "btop"
  "bun"
  "ffmpeg"
  "git"
  "git-lfs"
  "mas"
  "pnpm"
  "stripe"
)

for tool in "${brew_libs[@]}"; do
    brew install "$tool"
done