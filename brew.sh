#!/usr/bin/env bash

# Update homebrew and her packages (if needed).
brew update
brew upgrade

# Get Homebrew’s location.
BREW_PREFIX=$(brew --prefix)

# Install fish
brew install fish

# Switch to fish as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Install MacOS Apps
brew install mas
mas install 1176895641 # Spark
mas install 443987910  # 1Password - Password Manager and Secure Wallet
mas install 803453959  # Slack

# Install fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install --cask font-sauce-code-pro-nerd-font

# Install libraries
brew install wget
brew install --cask 1password-cli
brew install zioxide
brew install tmux
brew install tmuxinator
brew install exa
brew install fzf
brew install screen
brew install neovim
brew install grc
brew install screen
brew install mutagen

# Install development tools
brew install git
brew install iterm2
brew install --cask jetbrains-toolbox
brew install go
brew install node
brew install nvm
brew install php
brew install docker
brew install docker-compose
brew install colima
brew install ddev
brew install mkcert
brew install pnpm

# Other tools
brew install --cask spotify

# Clean up Homebrew packages
brew cleanup
