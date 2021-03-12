#! /usr/bin/env bash

process_option() {
	case $1 in
		'a')
			bin/macos_settings.sh
			bin/macos_defaults.sh
			bin/xcodeclitools.sh
			bin/homebrew.sh
			bin/macos_appstore.sh
			bin/personal_configuration.sh
			;;
		'u')
			bin/update.sh
			;;
		'q')
			printf "Goodbye !\n"
			;;
    	*)
      		printf "ERROR: Invalid option.\n";;
	esac
}
export -f process_option
