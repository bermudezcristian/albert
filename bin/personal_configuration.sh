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

printf "\nPERSONAL_CONFIGURATION : zsh - install\n"
if [[ -z "$ZSH" ]]; then
	CELLAR_PATH="/usr/local/Cellar"
	ANTIGEN_VERSION=$(ls "$CELLAR_PATH/antigen/")
	ANTIGEN_PATH_TO_ADD="$CELLAR_PATH/antigen/$ANTIGEN_VERSION/share/antigen/antigen.zsh"
	if grep -q "nvm" ~/.zshrc; then
		echo "nvm already configured"
	else
		echo "export NVM_DIR=\"$HOME/.nvm\"" >> ~/.zshrc
		echo "[ -s \"/usr/local/opt/nvm/nvm.sh\" ] && . \"/usr/local/opt/nvm/nvm.sh\"  # This loads nvm" >> ~/.zshrc
		echo "[ -s \"/usr/local/opt/nvm/etc/bash_completion.d/nvm\" ] && . \"/usr/local/opt/nvm/etc/bash_completion.d/nvm\"  # This loads nvm bash_completion" >> ~/.zshrc
	fi

	if grep -q "antigen" ~/.zshrc; then
		echo "Antigen already configured"
	else
		echo "source \"$ANTIGEN_PATH_TO_ADD\"" >> "$HOME_DIRECTORY/.zshrc" 
		echo "antigen init ~/.antigenrc" >> "$HOME_DIRECTORY/.zshrc"
	fi
	cat > "$HOME_DIRECTORY/.antigenrc" << EOF
# Load oh-my-zsh library
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)

# Load bundles from external repos

# Select theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done
antigen apply
EOF
else	
	printf "PERSONAL_CONFIGURATION : zsh - nothing to do\n"
fi
