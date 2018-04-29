# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# git-prompt.sh and git-completion.bash
source ~/dotfiles/deps/gitprompt/git-completion.bash
source ~/dotfiles/deps/gitprompt/git-prompt.sh

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto" # verbose, name
# [lastExitStatus: currentPID: currentJobs] user@host pwd [git stuff] $
#export PROMPT_COMMAND='__git_ps1 "\e[36m[$(echo $?):$(echo $$):\j]\e[m \u@\h \W" " \\\$ "'
# lastExitStatus: currentPID: currentJobs] user@host pwd [git stuff] $
#export PROMPT_COMMAND='__git_ps1 "\e[36m$(echo $?):$(echo $$):\j\e[m \u@\h \W" " \\\$ "'
# lastExitStatus: currentPID: currentJobs time user@host pwd [git stuff] $
#export PROMPT_COMMAND='__git_ps1 "\e[36m$(echo $?):$(echo $$):\j \t\e[m \u@\h \W" " \\\$ "'
# lastExitStatus: currentJobs time user@host pwd [git stuff] $
export PROMPT_COMMAND='__git_ps1 "\e[36m$(echo $?):\j \t\e[m \u@\h \W" " \\\$ "'

# fns
function title() {
  [ "$1" != "" ] && echo -n -e "\033]0;$1\007" || return $?;
}

# colored output -p adds / to dirs -F adds /@| to stuff
alias ls='ls -G'

# job control
alias njobs='jobs -p | wc -l'
alias killjobs='[[ $(njobs) -gt 0 ]] && kill $(jobs -p) || echo "no jobs to kill"'

# chrome headless
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# flow [app] [env] [flags]
alias flow='node ~/doctrin/flaunch/index.js'

# tldr <cmd>
alias tldr='bash ~/dev/tldr/tldr.sh'

# json2table
alias json2table='~/dev/json2table/index.js'

# ssn
alias ssn='~/dev/pernr/index.js | pbcopy; echo -e "$(pbpaste) copied to clipboard"'

# list hosts
alias hosts='less ~/.ssh/config'

# are there node processes running?
alias nodes='lsof -n -i tcp | grep node'

# ips
alias ip-wan='curl -s https://ip.mrfriday.com/'
alias ip-lan='ipconfig getifaddr en0'
alias myip='echo -e public"\t"$(ip-wan)"\n"private"\t"$(ip-lan)'

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

