#! /usr/bin/env bash

if ! command -v mas > /dev/null; then
	printf "ERROR: Mac App Store CLI (mas) can't be found\n"
	printf "       Please ensure Homebrew and mas (i.e. brew install mas) have been installed first\n"
	exit 1
fi

