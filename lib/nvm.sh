setup_nvm() {
  export NVM_DIR="${HOME}/.nvm"

  if [[ ! -s "${NVM_DIR}/nvm.sh" ]]; then
    echo "Installing nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
  fi

  # shellcheck disable=SC1090
  source "${NVM_DIR}/nvm.sh"

  echo "Installing Node.js 24..."
  nvm install 24
  nvm use 24
  nvm alias default 24
}
