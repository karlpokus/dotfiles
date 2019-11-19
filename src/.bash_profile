# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git-prompt.sh and git-completion.bash
source ~/dotfiles/deps/gitprompt/git-completion.bash
source ~/dotfiles/deps/gitprompt/git-prompt.sh

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto" # verbose, name
# lastExitStatus: currentJobs time user@host pwd [git stuff] $
#export PROMPT_COMMAND='__git_ps1 "\e[36m$(echo $?):\j \t\e[m \u@\h \W" " \\\$ "'
# split on two lines
export PROMPT_COMMAND='__git_ps1 "┌─ \e[36m$(echo $?):\j \t\e[m \u@\h \w\n└─" " \\\$ "'

# fns
function title() {
  [ "$1" != "" ] && echo -n -e "\033]0;$1\007" || return $?;
}

# add aliases by OS
source ~/dotfiles/src/aliases/common
case "$(uname -s)" in
  Darwin*) source ~/dotfiles/src/aliases/osx;;
  Linux*)  source ~/dotfiles/src/aliases/linux;;
esac

# vim
export VISUAL=vim
export EDITOR="$VISUAL"

# java
#export JAVA_HOME=`/usr/libexec/java_home`

# go-lang
export GOPATH=$HOME/golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# rust lang
export PATH="$HOME/.cargo/bin:$PATH"

# autocompletes
source ~/dotfiles/deps/bash_completion.d/ssh  #/usr/local/etc/bash_completion.d/ssh

# ls colors
export LSCOLORS=exfxcxdxbxegedabagacad

# set locale to something resembling eng
export LC_ALL=en_US.UTF-8
