#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - HOMEBREW = = =\n\n"

# HomeBrew
if ! command -v brew > /dev/null; then
        /bin/bash -c "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# HomeBrew Formulas
brew install gpg
brew install mas
brew install pinentry-mac
brew install terraform
brew install vim

# HomeBrew Casks
brew install --cask discord
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask obs
brew install --cask slack
brew install --cask telegram
brew install --cask vlc
brew install --cask vscodium
brew install --cask whatsapp