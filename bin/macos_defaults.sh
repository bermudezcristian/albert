#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - MACOS DEFAULTS = = =\n\n"

printf "MACOS_DEFAULTS : System - Automatic updates for Applications and MacOS\n"
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool TRUE
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool TRUE
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool TRUE

printf "MACOS_DEFAULTS : System - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "MACOS_DEFAULTS : Dock - Automatically hide and show\n"
defaults write com.apple.dock autohide -bool true

printf "MACOS_DEFAULTS : Dock - Don't show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

printf "MACOS_DEFAULTS : Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "MACOS_DEFAULTS : Finder - Use list view\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "MACOS_DEFAULTS : Mail - Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'\n"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

printf "MACOS_DEFAULTS : System - Trackpad Configuration\n"
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0	
	
