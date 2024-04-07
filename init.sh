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

mkdir -p ~/repos
mkdir -p ~/Downloads

# Copy AIPRM binaries
cp Downloads/* ~/Downloads/

# install go1.21
cd ~/Downloads && wget https://go.dev/dl/go1.21.8.linux-amd64.tar.gz
tar -xzf go1.21.8.linux-amd64.tar.gz
echo "go1.21 installed"

echo "export PATH=/home/$USER/Downloads:$PATH" >> /home/$USER/.bashrc
