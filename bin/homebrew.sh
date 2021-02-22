#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - HOMEBREW = = =\n\n"

printf "HOMEBREW : Setup - Installing Homebrew\n"
if ! command -v brew > /dev/null; then
        /bin/bash -c "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

printf "HOMEBREW : Installing - Formulas\n"
brew install gpg
brew install mas
brew install pinentry-mac
brew install terraform
brew install vim

printf "HOMEBREW : Installing - Casks\n"
brew install --cask discord
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask media-converter
brew install --cask obs
brew install --cask openvpn-connect
brew install --cask slack
brew install --cask telegram
brew install --cask vlc
brew install --cask vscodium
brew install --cask whatsapp