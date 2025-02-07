# Dotfiles

Personal dotfiles repository. Uses the absolutely fabulous https://www.chezmoi.io/

# Usage

## Set up dotfiles a new machine with a single command
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Nebulea-dev` then install packages (see [packages to install](#packages-to-install-todo--install-with-chezmoi-run_once_))


## Complete installation of chezmoi (recommended)
* Move to your home folder : `cd ~`
* Installation of chezmoi : `sh -c "$(curl -fsLS get.chezmoi.io)"`
* Add `~/bin/` to `$PATH` if not already done.
* Init dotfiles : `chezmoi init https://github.com/Nebulea-dev/dotfiles.git`
* See differences between current dotfiles and github dotfiles : `chezmoi diff`
* Apply changes : `chezmoi apply -v`

## Modify dotfiles
* Go to dotfiles folder : `chezmoi cd`
* Modify files as your heart desires
* Commit and push your changes

## Add/Update dotfiles
* Add a file or folder to the chezmoi dotfiles folder : `chezmoi add <file>`

# Packages to install (TODO : install with chezmoi run_once_)

## Packages who need sudo
- ZSH : `sudo apt install zsh`
- Tmux : `sudo apt install tmux`

## Packages who don't need sudo

To install the packages automatically, you can run `./setup.sh`

To install them manually :
- Oh-My-ZSH : `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Starship : `curl -sS https://starship.rs/install.sh | sh`
- Hack Nerd font : `wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip` then idk it depends, good luck
- Nvim : `wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz` then extract in `~/bin`
- Thefuck : `python3 -m venv ~/bin/venv && ~/bin/venv/bin/pip3 install thefuck && ~/bin/venv/bin/pip3 install tldr`

# Useful commands

* Set node and npm version to latest by default : `nvm alias default node`
