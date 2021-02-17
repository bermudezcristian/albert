#! /usr/bin/env bash

process_option() {
	case $1 in
		'A')
			bin/macos_settings.sh
			bin/macos_defaults.sh
			bin/xcodeclitools.sh
			bin/homebrew.sh
			bin/macos_appstore.sh
			bin/personal_configuration.sh
	esac
}
export -f process_option
