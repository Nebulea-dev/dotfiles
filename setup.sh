#!/usr/bin/env bash
set -Eeuo pipefail

# Crete bin folder if not already created. The folder will host all the software
mkdir -p ~/bin/


echo "=============== Installing ChezMoi ================="
cd ~
sh -c "$(curl -fsLS get.chezmoi.io)"


echo "=============== Installing OhMyZSH ================="
if [[ -z "${ZSH}" ]]; then
    cd /tmp/
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


echo "=============== Installing Starship ================"
cd /tmp/
curl -sS https://starship.rs/install.sh | sh


echo "================= Installing Nvim =================="
cd /tmp/
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz -C ~/bin/


echo "============ Installing python packages ============"
cd /tmp/
python3 -m venv ~/bin/venv
~/bin/venv/bin/pip3 install thefuck
~/bin/venv/bin/pip3 install tldr


echo "============ Installing Nerd Hack font ============="
cd /tmp/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
unzip Hack.zip
mkdir -p ~/.local/share/fonts
cp HackNerdFont-Bold.ttf ~/.local/share/fonts
