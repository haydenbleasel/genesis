brew_libs=(
  "btop"
  "ffmpeg"
  "git-lfs"
  "git"
  "gource"
  "mas"
  "pnpm"
  "stripe"
  "supabase"
)

for tool in "${brew_libs[@]}"; do
    brew install "$tool"
done