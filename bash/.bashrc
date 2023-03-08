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
alias gaap='git add .; git commit --amend --no-edit ; git push --force'
alias upda='sudo xbps-install -Suy'
alias shs='stylish-haskell -i app/**/*.hs'

export VISUAL="vim-huge"
# set -o vi
# bind -m vi-command ".":insert-last-argument
# bind -m vi-insert "\C-l.":clear-screen
# bind -m vi-insert "\C-a.":beginning-of-line
# bind -m vi-insert "\C-e.":end-of-line
# bind -m vi-insert "\C-w.":backward-kill-word
# bind -m vi-command ".":insert-last-argument
# bind -m vi-insert "\C-l.":clear-screen

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

# Support for local raylib installation
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64

# Golang support
mkdir -p $HOME/Golang
export GOPATH=$HOME/Golang
export PATH=$PATH:$GOPATH/bin

# Dart & Flutter support
export PATH=$PATH:$HOME/Gitrepos/flutter/bin
export CHROME_EXECUTABLE=/usr/bin/chromium
export PATH=$PATH:$HOME/.pub-cache/bin

# Android Studio SDK
export PATH=$PATH:$HOME/Android-Studio/bin

# Git fuzzy support
export PATH=$PATH:$HOME/bin/git-fuzzy/bin

# Purescript support
export PATH=$HOME/.npm/bin:$PATH
export PATH=./node_modules/.bin/:$PATH
export PURESCRIPT_PROJECTS_DIR="$HOME/Gitrepos"
export CDPATH="$PURESCRIPT_PROJECTS_DIR:$CDPATH"

# .NET support
export PATH=$HOME/.dotnet:$PATH

# Haskell GHCup integration - https://www.haskell.org/ghcup/
[ -f "/home/schmidh/.ghcup/env" ] && source "/home/schmidh/.ghcup/env" # ghcup-env

# FZF completion
if [ -f /usr/share/fzf/completion.bash ]; then
  source /usr/share/fzf/completion.bash
fi
if [ -f /usr/share/fzf/key-bindings.bash ]; then
  source /usr/share/fzf/key-bindings.bash
fi

# mpc - Music Player Client - completions
source /usr/share/doc/mpc/contrib/mpc-completion.bash
# mpv - Media playser completions
# source /usr/share/bash-completion/completions/mpv
# uftrace command completions
source /usr/share/bash-completion/completions/uftrace
# Haskell stack completions
source <(stack --bash-completion-script $(which stack))
# Cabal completions - https://github.com/haskell/cabal/blob/master/cabal-install/bash-completion/cabal
source $HOME/.completions/cabal
# GHC completions - https://github.com/ghc/ghc/tree/master/utils/completion
source $HOME/.completions/ghc.bash
# Summoner completions - https://kowainik.github.io/projects/summoner
# Summoner is a tool for scaffolding fully configured batteries-included production-level Haskell projects.
source <(summon --bash-completion-script `which summon`)
# npm completion - https://docs.npmjs.com/cli/v6/commands/npm-completion
source <(npm completion)
# spago completion
source <(spago --bash-completion-script $(which spago))
# yt-dlp completions
source /home/schmidh/.completions/yt-dlp
#erlang.mk completions
source /home/schmidh/.completions/erlang_mk
#rustup
source /home/schmidh/.completions/rustup
#cargo
source /home/schmidh/.completions/cargo

export PAGER=nvimpager

# Use n for installing node - https://github.com/tj/n
new-purescript-proj () {
  [[ ! -d "$PURESCRIPT_PROJECTS_DIR/$1" ]] &&
  mkdir -p "$PURESCRIPT_PROJECTS_DIR/$1" &&
  cd $1 &&
  npm init -y &&
  npm install --save-dev spago purescript purescript-psa purty purs-tidy purescript-language-server &&
  spago init -C &&
  spago run &&
  echo -e "Add spago bash completion:\n\`\`\`shell\nsource <(spago --bash-completion-script \$(which spago))\n\`\`\`\n" >> README.md &&
  echo -e "Automatic rebuild:\n\`\`\`shell\nspago build --watch\n\`\`\`\n" >> README.md &&
  sed -i '/node_modules/d' .gitignore &&
  git init &&
  git add . &&
  git commit -m 'initializes repository.'
}

# Local binaries
export PATH=$PATH:$HOME/bin:$HOME/local/bin:$HOME/.local/bin

# Install Icons-in-Terminal
# https://github.com/sebastiencs/icons-in-terminal
source ~/.local/share/icons-in-terminal/icons_bash.sh

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# opam configuration
test -r /home/schmidh/.opam/opam-init/init.sh && . /home/schmidh/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

. "$HOME/.cargo/env"
