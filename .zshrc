# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ivan/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell_custom_2"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e="atom -nw"
# Bind arrows to corresponding keys for easy navigation
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# Sudo -> Please :)
alias please="sudo"

# Anaconda PATH
export PATH="/Users/ivan/Documents/Applications/anaconda3/bin:$PATH"

# C++ PATH
export CPATH=/Library/Developer/CommandLineTools/usr/include/c++/v1

# Go PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# AWS cli path
export PATH=$HOME/.local/bin:$PATH

# Elasticsearch name (with VPN only)
export ES_FULL=managed-elasticsearch-scraping-data.default.svc.cluster.local:80
export ES=managed-elasticsearch-scraping-data:80

# Prompt settings
PROMPT="%{$fg[yellow]%}%n@%{$fg[yellow]%}%m:%{$reset_color%} ${PROMPT}"

# Set Santiment and personal working directories shortcuts
export SAN=~/Documents/Work/santiment
alias san="$SAN"
export LAB=~/Documents/Laboratory/Projects
alias lab="$LAB"

# Jupyter aliases
alias jn="cd --; jupyter notebook"
alias jl="cd --; jupyter lab"

# Clickhouse aliases
alias chstage="docker run -it --rm --network host yandex/clickhouse-client:19.1.6 --host clickhouse.default.svc.cluster.local"
alias chlocal="docker run -it --rm --network host yandex/clickhouse-client:19.1.6 --host 127.0.0.1"

# Git aliases
# alais g="git" - is part of the git plugin
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m "

# Docker aliases
alias d="docker"
alias dr="docker run"
alias db="docker build"
alias dc="docker-compose"
alias dk="docker kill"
alias drm="docker rm"
alias dka="docker kill $(docker ps -q)"
alias dps="docker ps"

# Kubernetes aliases
alias kp="cd --; kubectl proxy"
alias kgp="kubectl get pods"
alias kgj="kubectl get jobs"
alias kgcj="kubectl get cronjobs"
alias kdp="kubectl delete pod"
alias kdj="kubectl delete job"
alias kdcj="kubectl delete cronjob"
alias klogs="kubectl logs"

# Other aliases
alias hgrep="history | grep"
# timestamps_1d shows the current timestamp and the timestamp for the moment which was 24h ago in a convenient way so it can be pasted into REST requests
alias timestamps_1d="printf 'from_timestamp=%s' $(expr $(date +%s) - 86400); printf '&to_timestamp=%s\n' $(date +%s)"
alias t1d="timestamps_1d"
alias timestamps_1h="printf 'from_timestamp=%s' $(expr $(date +%s) - 3600); printf '&to_timestamp=%s\n' $(date +%s)"  # does the same for 1 hour
alias t1h="timestamps_1h"
