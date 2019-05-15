# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:/usr/local/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes


# Must have a nerd font installed - mono fonts tend to have spacing issues - https://github.com/ryanoasis/nerd-fonts
POWERLEVEL9K_MODE='nerdfont-complete'

ZSH_THEME='powerlevel9k/powerlevel9k'

# Prompt Options
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_HIDE_BRANCH_ICON=true

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c0'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status user dir vcs dir_writable)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' \ue0c2'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time node_version)

# Last Command Status Segment
POWERLEVEL9K_OK_ICON='\uf179'
POWERLEVEL9K_STATUS_OK_BACKGROUND='dodgerblue2'
POWERLEVEL9K_STATUS_OK_FOREGROUND='white'

POWERLEVEL9K_FAIL_ICON='\uf119'
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='red'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='253'

# Directory Segment
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_PATH_SEPARATOR=$(echo -n " \uE0B1 ")

POWERLEVEL9K_DIR_HOME_BACKGROUND='028'
POWERLEVEL9K_DIR_HOME_FOREGROUND="253"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='022'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="253"

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="253"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="028"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="253"

# Version Control Section
POWERLEVEL9K_VCS_GIT_ICON='\ue708'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\ue708'
# Advanced `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

# Advanced `vi_mode` color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'

# Execution Time Segment
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='196'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='253'

POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 

# NVM Version Segment
POWERLEVEL9K_NODE_ICON='\uf898'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='202'
POWERLEVEL9K_NODE_VERSION_FOREGROUND='253'


POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  node
  npm
  osx
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

#commit с рандомным сообщением из файла ~/commit_messages.txt и push
#git pull с ребейзом
alias gcm='git commit -m '

#git pull с ребейзом
alias gal='git add *'

#git pull с ребейзом
alias gpull='git pull --rebase origin'

#git push
alias gpush='git push origin'

#статус репозитория
alias gst='git status'

alias gco='git checkout'

#ленивый коммит всего с сообщением "ninja commit" с последующим пушем
alias gcif='git commit -am "ninja commit" && gpush'

#коммит с вводом сообщения
alias gcim='git commit -am'

#показывает измененные файлы, относительно ветки master
alias gdm="git diff master --name-only"

#pull и push. да, такое иногда нужно
alias gpp='gpull && gpush'

#список локальных веток
alias gbl='git branch'

#создание новой ветки на основе ветки master
alias gnb='gco master && gpull && gco -b '

#fetch && pull
alias gf='git fetch && git pull'

#очистка репозитория
alias gclean='git clean -dfx'

#греп по измененным файлам, относительно ветки master
legendary-grep(){
	grep -rni "$1" `git diff master --name-only` --color
}

#создание новой ветки на основе ветки master
alias glg='git log --graph --oneline --decorate --all'

source $(dirname $(gem which colorls))/tab_complete.sh

alias lc='colorls -lA --sd'
alias ls='colorls -lA --sd --report'

#ностальгия по wget
alias wget="curl -O"

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nv

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
