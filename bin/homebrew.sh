#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - HOMEBREW = = =\n\n"

printf "HOMEBREW : Setup - Installing Homebrew\n"
if ! command -v brew > /dev/null; then
        /bin/bash -c "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

printf "HOMEBREW : Installing - Formulas\n"
brew install antigen
brew install awscli
brew install doctl
brew install fastlane
brew install fortune
brew install gh
brew install gpg
brew install helm
brew install httpie
brew install jenv
brew install jq
brew install mas
brew install nmap
brew install nvm
brew install openjdk@8
brew install pinentry-mac
brew install pygments
brew install terraform
brew install vim
brew install watch

printf "HOMEBREW : Installing - Casks\n"
brew install --cask discord
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask media-converter
brew install --cask obs
brew install --cask openvpn-connect
brew install --cask slack
brew install --cask telegram
brew install --cask vagrant
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask vlc
brew install --cask vscodium
brew install --cask whatsapp
brew install --cask zoom
