#! /usr/bin/env bash

# XCode Cli Tools
printf "Installing XCode Cli Tools... \n"
xcode-select --install

# HomeBrew
if ! command -v brew > /dev/null; then
	/bin/bash -c "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# HomeBrew Formulas
brew install gpg
brew install mas
brew install pinetry-mac
brew install terraform
brew install vim

# HomeBrew Casks
brew install --cask discord
brew install --cask firefox
brew install --cask google-chrome
brew install --cask obs
brew install --cask slack
brew install --cask telegram
brew install --cask vlc
brew install --cask whatsapp
