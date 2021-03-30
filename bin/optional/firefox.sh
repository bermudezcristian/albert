#! /usr/bin/env	bash

source lib/pause.sh

if [[ $FIREFOX_PERSONALIZATION == 'true' ]]; then
	printf "\nPERSONAL_CONFIGURATION : firefox - Profile\n"
	FIREFOX_PATH="$HOME_DIRECTORY/Library/Application Support/Firefox/Profiles"
        if [[ -d $FIREFOX_PATH ]]; then
                printf "PERSONAL_CONFIGURATION : firefox - Profile found\n"
        else
                printf "PERSONAL_CONFIGURATION : firefox - Profile does not exists, firefox will be open.\n"
		printf "                                   Be sure that Firefox it's open and close it\n"
		printf "                                   Press [Enter] key to open firefox, then, close it, go back to this script, and press [Enter] key again\n"
		pause "Press [Enter to open firefox"
 		/Applications/Firefox.app/Contents/MacOS/firefox > /dev/null 2>&1 &
		pause "Press [Enter to configure firefox]"
        fi
	FIREFOX_PROFILE=$(ls "$FIREFOX_PATH" | grep "default-release")
	TREE_STYLE_TAB=$(jq '.addons[] | select (.id == "treestyletab@piro.sakura.ne.jp") | .active' "$FIREFOX_PATH/$FIREFOX_PROFILE/extensions.json")
	if [[ $TREE_STYLE_TAB == 'true' ]]; then
		printf "PERSONAL_CONFIGURATION : firefox - configuring tree style tab extension\n"
		mkdir -p "$FIREFOX_PATH/$FIREFOX_PROFILE/chrome/"
		if [ ! -f "$FIREFOX_PATH/$FIREFOX_PROFILE/chrome/userChrome.css" ]; then
			cat > "$FIREFOX_PATH/$FIREFOX_PROFILE/chrome/userChrome.css" << EOF
#main-window[tabsintitlebar="true"]:not([extradragspace="true"]) #TabsToolbar > .toolbar-items {
  opacity: 0;
  pointer-events: none;
}
#main-window:not([tabsintitlebar="true"]) #TabsToolbar {
    visibility: collapse !important;
}
#main-window[tabsintitlebar="true"]:not([extradragspace="true"]) #TabsToolbar .titlebar-spacer {
        border-inline-end: none;
}

/*Collapse in default state and add transition*/
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] {
  overflow: hidden;
  min-width: 40px;
  max-width: 40px;
  transition: all 0.2s ease;
  border-right: 1px solid #0c0c0d;
  z-index: 2;
}

/*Expand to 260px on hover*/
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]:hover,
#sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar {
  min-width: 260px !important;
  max-width: 260px !important;
  z-index: 1;
}
EOF
			if grep -q "toolkit.legacyUserProfileCustomizations.stylesheets" "$FIREFOX_PATH/$FIREFOX_PROFILE/chrome/userChrome.css"; then
				echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "$FIREFOX_PATH/$FIREFOX_PROFILE/prefs.js"			
			fi
		fi
	fi

else
        printf "firefox personalization was not enabled"
fi
