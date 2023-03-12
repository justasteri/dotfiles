#/bin/bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Starship
curl -sS https://starship.rs/install.sh | sh

# Neovim pip packages
pip3 install neovim
pip3 install --user pylint

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Bat conf
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher