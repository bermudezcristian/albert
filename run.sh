#! /usr/bin/env bash

source lib/options.sh

while true; do
	if [[ $# == 0 ]]; then
		clear
		printf " _______ _______ _______  _____  _______      _______ _     _ _______  _____  _______ _______ _______ _____  _____  __   _\n"
        printf " |  |  | |_____| |       |     | |______      |_____| |     |    |    |     | |  |  | |_____|    |      |   |     | | \  |\n"
        printf " |  |  | |     | |_____  |_____| ______|      |     | |_____|    |    |_____| |  |  | |     |    |    __|__ |_____| |  \_|\n"
		printf "\nUsage: ./run OPTION\n\n"
        printf "	Install:\n"
        printf "		a:	Install everything\n"
		printf "	Update:\n"
		printf "		u:	Update everything\n"
        printf "	Manage:\n"
        printf "		q:  Quit/Exit\n\n"
		read -p "Enter selection: " response
		printf "\n"
		process_option $response
	else
		process_option $1
	fi
	break
done
