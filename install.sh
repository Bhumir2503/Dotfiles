#!/bin/bash

# Exit immediately if any command fails
set -e

DOTFILES="$HOME/.dotfiles"

echo "Starting macOS dotfiles setup..."

# --- 0. Sudo Keep-Alive ---
echo "Please enter your Mac password to authorize installations:"
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `install.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# --- 1. Homebrew Check & Installation ---
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew automatically..."
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Installing tools and apps from Brewfile (skipping installed)..."
# --no-upgrade ensures it just installs what is missing and skips the rest quickly
brew bundle --file="$DOTFILES/packages/Brewfile" --no-upgrade


# --- 2. Shell Configurations ---
echo "Linking shell configurations..."
ln -sf "$DOTFILES/shell/.zshrc" "$HOME/.zshrc"


# --- 3. App Configurations ---
echo "Linking app configs (Ghostty & Starship)..."
mkdir -p "$HOME/.config/ghostty"
ln -sf "$DOTFILES/config/ghostty/config" "$HOME/.config/ghostty/config"
ln -sf "$DOTFILES/config/starship.toml" "$HOME/.config/starship.toml"


# --- 4. Git Configurations ---
echo "Linking Git configurations..."
ln -sf "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES/git/.gitignore_global" "$HOME/.gitignore_global"


echo "Setup complete! Reloading terminal environment..."
exec zsh -l