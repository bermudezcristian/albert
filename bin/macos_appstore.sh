#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - MACOS APPSTORE = = =\n\n"

if ! command -v mas > /dev/null; then
	printf "MACOS_APPSTORE : ERROR - Mac App Store CLI (mas) can't be found\n"
	printf "MACOS_APPSTORE :         Please ensure Homebrew and mas (i.e. brew install mas) have been installed first\n"
	exit 1
fi

