#! /usr/bin/env bash

printf "\n\n= = = MACOS AUTOMATION - PERSONAL CONFIGURATION = = =\n\n"

printf "PERSONAL_CONFIGURATION : git - Setting Up\n"
# git
git config --global user.name "$GIT_USER_NAME"
git config --global user.email $GIT_USER_EMAIL
git config --global commit.gpgsign $GIT_COMMIT_USE_GPG
git config --global user.signingkey $GIT_USER_GPG_KEY

printf "\nPERSONAL_CONFIGURATION : pinentry-mac - Setting Up\n"
# pinentry-mac
if grep -q "pinentry-program" ~/.gnupg/gpg-agent.conf; then
        printf "PERSONAL_CONFIGURATION : pinentry-mac - Pinentry already configured\n"
else
        echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
fi

printf "\nPERSONAL_CONFIGURATION : directories - Setting Up\n"
if [[ -z "$LIST_OF_DIRECTORIES" ]]; then
	printf "PERSONAL_CONFIGURATION : directories - No directories to create\n"
else
	IFS=,
	for directory_item in $LIST_OF_DIRECTORIES;
	do
		/bin/mkdir -p "$HOME_DIRECTORY/$directory_item"
	done
fi

#printf "\nPERSONAL_CONFIGURATION : zsh - install\n"
#if [[ -z "$ZSH" ]]; then
#	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#	chmod g-w,o-w /usr/local/share/zsh/site-functions
#	chmod g-w,o-w /usr/local/share/zsh
#else	
#	printf "PERSONAL_CONFIGURATION : zsh - nothing to do\n"
#fi
