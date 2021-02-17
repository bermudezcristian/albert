#! /usr/bin/env bash

source lib/options.sh

while true; do
	if [[ $# == 0 ]]; then
		clear
		printf "MACOS AUTOMATION\n"
		read -p "Enter selection: " response
		printf "\n"
		process_option $response
	else
		process_option $1
	fi
	break
done
