# Path to your oh-my-bash installation.
export OSH=/home/schmidh/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
  tmux
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
  ls
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
  npm
)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"
alias l1='ls -1l'
alias vim='vim-huge'

export VISUAL="vim-huge"
# set -o vi
# bind -m vi-command ".":insert-last-argument
# bind -m vi-insert "\C-l.":clear-screen
# bind -m vi-insert "\C-a.":beginning-of-line
# bind -m vi-insert "\C-e.":end-of-line
# bind -m vi-insert "\C-w.":backward-kill-word
# bind -m vi-command ".":insert-last-argument
# bind -m vi-insert "\C-l.":clear-screen

# FZF completion
if [ -f /usr/share/doc/fzf/completion.bash ]; then
  source /usr/share/doc/fzf/completion.bash
fi
if [ -f /usr/share/doc/fzf/key-bindings.bash ]; then
  source /usr/share/doc/fzf/key-bindings.bash
fi

# mpc - Music Player Client - completions
source /usr/share/doc/mpc/contrib/mpc-completion.bash
# mpv - Media playser completions
# source /usr/share/bash-completion/completions/mpv
# uftrace command completions
source /usr/share/bash-completion/completions/uftrace

# Activate extended globs
shopt -s extglob

# Autocomplete sudo commands
complete -cf sudo

# Colorful manpages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Local binaries
export PATH=$PATH:~/bin:~/go/bin:~/.local/bin

# Support for local raylib installation
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64

# Golang support
export GOPATH=$HOME/Golang
export PATH=$PATH:$GOPATH/bin

# Install Icons-in-Terminal
# https://github.com/sebastiencs/icons-in-terminal
source ~/.local/share/icons-in-terminal/icons_bash.sh

# Select TV channel
sc () {
  curl -s http://192.168.0.47:22000/play/sundtek.m3u | grep 22000 | dmenu -i -l 10 | xargs -r mpv & disown
}
