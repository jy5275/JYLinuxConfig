#!/bin/bash

# Copy config files
if grep -q "#force_color_prompt=yes" ~/.bashrc; then
    sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc
    echo "Enabled force_color_prompt in .bashrc"
else
    echo "Failed to enable force_color_prompt"
fi
cp .bash_aliases ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .gitconfig ~/

mkdir -p ~/repos
mkdir -p ~/Downloads

touch ~/.config/gitignore-global
grep -qxF '.opencode/' ~/.config/gitignore-global 2>/dev/null || echo '.opencode/' >> ~/.config/gitignore-global
git config --global core.excludesFile ~/.config/gitignore-global

git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_rsa.pub
git config --global commit.gpgsign true
git config --global tag.gpgsign true
