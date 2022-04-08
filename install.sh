#!/bin/bash

set -eou pipefail

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply https://git.sr.ht/~sam_mauldin/dotfiles

mkdir -p ~/bin

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv ./nvim.appimage ~/bin/nvim
cd ~/bin
./nvim --appimage-extract
mv squashfs-root nvim-extracted
rm nvim
ln -s $HOME/bin/nvim-extracted/usr/bin/nvim $HOME/bin/nvim

sudo apt-get install -y ripgrep fzf
