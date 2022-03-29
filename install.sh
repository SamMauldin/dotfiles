#!/bin/bash

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply git@git.sr.ht:~sam_mauldin/dotfiles

mkdir -p ~/bin

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv ./nvim.appimage ~/bin/nvim
