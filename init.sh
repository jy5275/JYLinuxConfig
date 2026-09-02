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

mkdir -p ~/.config/git
grep -qxF '.opencode/' ~/.config/git/ignore 2>/dev/null || echo '.opencode/' >> ~/.config/git/ignore
git config --global core.excludesFile ~/.config/git/ignore
