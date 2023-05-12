#/bin/bash

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Oh-my-zsh plugins
# vi-mode
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode
# autocompletetion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Neovim pip packages
pip3 install neovim
pip3 install --user pylint

# FZF
cd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# NvChad
cd
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# <Espanso>

cd
# Create the $HOME/opt destination folder
mkdir -p ~/opt
# Download the AppImage inside it
wget -O ~/opt/Espanso.AppImage 'https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage'
# Make it executable
chmod u+x ~/opt/Espanso.AppImage
# Create the "espanso" command alias
sudo ~/opt/Espanso.AppImage env-path register

# Register espanso as a systemd service (required only once)
espanso service register

# Start espanso
espanso start
# <Espanso/>

# rofi themes
cd
git clone --depth=1 https://github.com/JustAsteri/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

# TMUX plugins
cd
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Neofetch themes
cd ~/.config/neofetch/ && rename config.conf configbackup.conf config.conf
git clone https://github.com/Chick2D/neofetch-themes/
cat neofetch-themes/small/blockfetch.conf > ~/.config/neofetch/config.conf

# P10K
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k