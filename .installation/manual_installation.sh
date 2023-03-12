#/bin/bash

# Oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Starship
curl -sS https://starship.rs/install.sh | sh

# Neovim pip packages
pip3 install neovim
pip3 install --user pylint

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
