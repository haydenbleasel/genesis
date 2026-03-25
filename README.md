# Genesis

Personal macOS bootstrap script for setting up a new machine with Homebrew, Node.js, App Store apps, npm packages, and Cursor extensions.

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
- Installs the Homebrew formulae listed in [`lib/brew.sh`](/Users/haydenbleasel/GitHub/genesis/lib/brew.sh)
- Installs the Homebrew casks listed in [`lib/casks.sh`](/Users/haydenbleasel/GitHub/genesis/lib/casks.sh)
- Installs the Mac App Store apps listed in [`lib/mas.sh`](/Users/haydenbleasel/GitHub/genesis/lib/mas.sh)
- Installs the npm packages listed in [`lib/npm.sh`](/Users/haydenbleasel/GitHub/genesis/lib/npm.sh)
- Installs the Cursor extensions listed in [`lib/cursor.sh`](/Users/haydenbleasel/GitHub/genesis/lib/cursor.sh)

## Prerequisites

- macOS only
- An internet connection
- Sign in to the Mac App Store before running if you want `mas` installs to succeed
- Install the Cursor CLI before running if you want extension installs to succeed

If the App Store account or Cursor CLI is unavailable, Genesis skips those steps and prints a message.
