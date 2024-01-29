# zellij
eval "$(zellij setup --generate-auto-start zsh)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export CHROME_PATH=/bin/brave
export GPG_TTY=$TTY
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME/.local/bin:$PATH

# deno
export DENO_INSTALL="/home/kalwabed/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# postgresql
export PGDATA=/var/lib/postgres/data

# flutter
export PATH=$PATH:/usr/local/flutter/bin

# android studio
export PATH=$PATH:/usr/local/android-studio/bin

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# fnm
export PATH="/home/kalwabed/.local/share/fnm:$PATH"
eval "`fnm env`"

# Path to your oh-my-zsh installation.
export ZSH="/home/kalwabed/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6d6d6d,bold,underline"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git podman gitfast aliases command-not-found archlinux gpg-agent ssh-agent fnm golang rust fzf-tab zoxide yarn docker docker-compose kubectl zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

# fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='lvim'
else
 export EDITOR='helix'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cl=clear
alias cd=z
alias find=bfs
alias cat=bat
alias ls="eza --icons"
alias hx=helix
alias lv=lvim

# git alias
alias gbclear='git branch | grep -v "main" | xargs git branch -D'

# pnpm alias
alias pn="pnpm"
alias pni="pnpm install"
alias pna="pnpm add"
alias pnad="pnpm add -D"
alias pnu="pnpm up -Li"
alias pnd="pnpm run dev"

# pnpm
export PNPM_HOME="/home/kalwabed/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
fpath+=${ZDOTDIR:-~}/.zsh-functions

# bun completions
[ -s "/home/kalwabed/.bun/_bun" ] && source "/home/kalwabed/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# proto
export PROTO_ROOT="$HOME/.proto"
export PATH="$PROTO_ROOT/bin:$PATH"

# Turso
export PATH="/home/kalwabed/.turso:$PATH"

eval "$(atuin init zsh)"
eval "$(starship init zsh)"

# This script was automatically generated by the broot program
# More information can be found in https://github.com/Canop/broot
# This function starts broot and executes the command
# it produces, if any.
# It's needed because some shell commands, like `cd`,
# have no useful effect if executed in a subshell.
function br {
    local cmd cmd_file code
    cmd_file=$(mktemp)
    if broot --outcmd "$cmd_file" "$@"; then
        cmd=$(<"$cmd_file")
        command rm -f "$cmd_file"
        eval "$cmd"
    else
        code=$?
        command rm -f "$cmd_file"
        return "$code"
    fi
}

source /home/kalwabed/.config/broot/launcher/bash/br
