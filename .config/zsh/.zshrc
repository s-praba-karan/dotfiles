# Prompt
PROMPT='%F{yellow}%1~%f %F{green}∯%f  '

# Path
PATH=$PATH:$HOME/.scripts/lynx
PATH=$PATH:$HOME/.scripts
LYNX_CFG=$HOME/.config/lynx/lynx.cfg
LYNX_LSS=$HOME/.config/lynx/lynx.lss

# Plugins
source $HOME/.config/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/.config/zsh/plugins/wbase.zsh/wbase.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOME/.config/zsh/plugins/zsh-nvm-lazy-load/zsh-nvm-lazy-load.plugin.zsh

# Basic Settings
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
eval "$(zoxide init --cmd cd zsh)"

# Autosuggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AETOSUGGEST_STRATEGY=(history completion)

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

###########
# Aliases #
###########

## App launchers
alias v='nvim -i NONE'

#xbps
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias xu='sudo xbps-install -Su'

# Pacman and Yay
alias pac='sudo pacman'
alias pacs='sudo pacman -Sy'
alias pacr='sudo pacman -R'
alias up='sudo pacman -Syyyu; yay -Syyyu'
alias ys='yay -Sy'
alias yr='yay -R'

# ytfzf and ani-cli
alias ytt='ytfzf -t' 
alias yta='ytfzf -t -m'
alias yth='ytfzf -H'
alias ytc='ytfzf -x'

# tmux
alias 'tmux'='tmux -u'
alias 't'='tmux -u'
alias 'tn'='t new -s'
alias 'tl'='tmux ls'
alias 'ta'='tmux a -t'
alias 'tk'='tmux kill-ses -t'

# git
alias 'gc'='git clone'

# Misc
alias 'sudo'='sudo '
alias 'cls'='clear'
alias 'ls'='lsd'
alias 'lsa'='lsd -al'
alias 'tree'='lsd --tree'
alias 'lf'='~/.scripts/lf-ueberzug'
alias 'nb'='newsboat'
alias 'za'='zathura'
alias 'open'='xdg-open'
alias 'config'='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias 'lynx'='~/.scripts/lynx'
alias '?'='~/.scripts/duck'
