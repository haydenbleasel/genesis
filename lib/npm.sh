install_npm_packages() {
  local npm_packages=(
    "vercel"
  )

  local package
  for package in "${npm_packages[@]}"; do
    npm install -g "${package}"
  done
}
