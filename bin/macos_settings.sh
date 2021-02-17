#! /usr/bin/env bash

if [[ -z "$MACOS_NAME" ]]; then
	read -p "What is this machine name (Example: \"albert\")? " MACOS_NAME
	if [[ -z "$MACOS_NAME" ]]; then
		printf "ERROR: Invalid machine name\n"
		exit 1
	fi
fi

printf "Setting system label and name\n"
sudo scutil --set ComputerName $MACOS_NAME
sudo scutil --set HostName $MACOS_NAME
sudo scutil --set LocalHostName $MACOS_NAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $MACOS_NAME
