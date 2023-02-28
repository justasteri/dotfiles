#/bin/bash

# Oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Starship
curl -sS https://starship.rs/install.sh | sh

# Neovim pip packages
pip3 install neovim
pip3 install --user pylint

# Rofi
# cd ~/Downloads/repos
# git clone --depth=1 https://github.com/adi1090x/rofi.git
# cd rofi
# chmod +x setup.sh
# ./setup.sh
## Delete repo
# cd ..
# rm -rf rofi/

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
