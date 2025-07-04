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

for cask in "${brew_casks[@]}"; do
    brew install --cask "$cask"
done