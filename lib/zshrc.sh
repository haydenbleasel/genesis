configure_zshrc() {
  local zshrc_path="${HOME}/.zshrc"
  local start_marker="# >>> genesis >>>"
  local end_marker="# <<< genesis <<<"

  if [[ -f "${zshrc_path}" ]] && grep -Fq "${start_marker}" "${zshrc_path}"; then
    echo "Skipping .zshrc updates; Genesis block already exists"
    return
  fi

  echo "Updating ${zshrc_path}..."

  cat <<EOF >> "${zshrc_path}"

${start_marker}
# Quiet, NPM
export DISABLE_OPENCOLLECTIVE=1
export ADBLOCK=1

# Let's fkn go
alias lfg="codex --yolo"
${end_marker}
EOF
}
