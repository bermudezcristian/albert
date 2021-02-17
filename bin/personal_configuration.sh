#! /usr/bin/env bash

# git
git config --global user.name "$GIT_USER_NAME"
git config --global user.email $GIT_USER_EMAIL
git config --global commit.gpgsign $GIT_COMMIT_USE_GPG
git config --global user.signingkey $GIT_USER_GPG_KEY

# pinentry-mac
if grep -q "pinentry-program" ~/.gnupg/gpg-agent.conf; then
        printf "Pinentry already configured"
else
        printf "Configuring Pinentry"
        echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
fi
