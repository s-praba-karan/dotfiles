# Basic stff
source ~/.config/zsh/.zprofile #.zshenv stuff

export TERM="xterm-256color"
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(zsh-nvm git npm)

setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory

HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.config/zsh/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk

PATH=$PATH:$HOME/.scripts/lynx
PATH=$PATH:$HOME/.scripts #making my scripts run without typing the whole path
LYNX_CFG=$HOME/.config/lynx/lynx.cfg
LYNX_LSS=$HOME/.config/lynx/lynx.lss

# Prompt Settings
PROMPT='%F{yellow}%1~%f %F{green}∯%f  '

# Basic zsh settings
bindkey -v # vi-mode
autoload -Uz compinit && compinit #need the next two lines for case insensitive tab completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

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
alias 'kill'='killall -q'
alias 'cls'='clear'
alias 'ls'='lsd'
alias 'lsa'='lsd -al'
alias 'tree'='lsd --tree'
alias 'lf'='~/.scripts/lf-ueberzug'
alias 'nb'='newsboat'
alias 'z'='zathura'
alias 'open'='xdg-open'
alias 'config'='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias 'lynx'='~/.scripts/lynx/lynx'
alias '?'='~/.scripts/duck'
alias '??'='~/.scripts/google'
# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
