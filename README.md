# Genesis

Personal macOS bootstrap script for setting up a new machine with Homebrew, Node.js, fonts, App Store apps, npm packages, Cursor extensions, a preferred Dock layout, and shell defaults.

## Usage

Run the script from anywhere:

```bash
bash /absolute/path/to/init.sh
```

Or from the repository root:

```bash
bash ./init.sh
```

The script is designed to be rerun. It skips installed Homebrew formulae, casks, and App Store apps when possible.

## What it does

- Installs Homebrew if it is missing, then runs `brew update` and `brew upgrade`
- Installs `nvm`, then installs and activates Node.js `24`
- Installs the Homebrew formulae, casks, fonts, and Mac App Store apps listed in [`Brewfile`](Brewfile) via `brew bundle`
- Installs the npm packages listed in [`lib/npm.sh`](lib/npm.sh)
- Installs the Cursor extensions listed in [`lib/cursor.sh`](lib/cursor.sh)
- Applies the macOS `defaults` listed in [`lib/defaults.sh`](lib/defaults.sh)
- Configures the Dock order listed in [`lib/dock.sh`](lib/dock.sh)
- Sets sensible git defaults via [`lib/git.sh`](lib/git.sh) (`init.defaultBranch=main`, `push.autoSetupRemote=true`); identity, SSH, and commit signing are left to GitHub Desktop, 1Password's developer SSH agent, and `gh auth login`
- Updates `.zshrc` using [`lib/zshrc.sh`](lib/zshrc.sh), enabling the Oh My Zsh `git` plugin when available, loading `nvm` in future zsh sessions, plus `autocd` and dot-directory shortcuts
- Prints the manual follow-up steps listed in [`lib/postflight.sh`](lib/postflight.sh)

## Prerequisites

- macOS only
- An internet connection
- Sign in to the Mac App Store before running if you want `mas` installs to succeed

If the App Store account is unavailable, Genesis skips those steps and prints a message.
