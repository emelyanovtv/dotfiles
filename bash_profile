PS1="\h:\W \u\[\033[0;31m\] \$(get_git_branch) \[\033[0m\]\$ "

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh



if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# переопределяет PS, поэтому слетает раскраска



export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#получение текущей git-ветки
get_git_branch() {
  echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
}

#обновление мастера и squash merge в текущую ветку, если это не master
actualize() {
  	branch=`get_git_branch`
	echo `gco master && git fetch origin && git pull && gco $branch && gpull`
	if [[ $branch != "master" ]]
		then ((echo `git merge master --quiet --squash`))
	else
		echo "branch is master"
	fi
}

#commit с рандомным сообщением из файла ~/commit_messages.txt и push
#git pull с ребейзом
alias gcm='git commit -m '

#git pull с ребейзом
alias gal='git add *'

#git pull с ребейзом
alias gpull='git pull --rebase origin `get_git_branch`'

#git push
alias gpush='git push origin `get_git_branch`'

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

#ностальгия по wget
alias wget="curl -O"
