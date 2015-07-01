export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Alias
alias lab='cd /Users/mbigorne/Documents/Lab'
alias app='cd /Users/mbigorne/Documents/app'
alias myip='ifconfig en1 | grep "inet " | cut -d" " -f2'

# Git
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

# Java
# jdk 6 
#JAVA_HOME=/Library/Java/Home
# jdk 7 
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/

# Scala
SCALA_HOME=/usr/local/Cellar/scala/2.10.3

# PATH
export PATH=/usr/local/bin:$JAVA_HOME/bin:$SCALA_HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# PS1
export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
