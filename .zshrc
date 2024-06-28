# =========================
# === Oh my ZSH Configs ===
# =========================
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-completions zsh-autosuggestions fzf-tab zsh-vi-mode z sudo archlinux command-not-found zsh-history-substring-search web-search copyfile exercism)

source $ZSH/oh-my-zsh.sh

# ===========================
# === User configurations ===
# ===========================
COMPLETION_WAITING_DOTS="true"
export PATH=~/bin:$PATH
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# === Alias ===
alias c="clear"
alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'
alias ls='lsd'
alias zshconfig="nvim ~/.zshrc"
alias logout="sudo pkill -u justasteri"

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

## Keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-

## Miniconda
### >>> conda initialize >>>
#### !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/justasteri/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/justasteri/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/justasteri/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/justasteri/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
### <<< conda initialize <<<

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# === Themes ===
## fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
