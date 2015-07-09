export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# Alias
alias lab='cd /Users/mbigorne/Documents/Lab'
alias app='cd /Users/mbigorne/Documents/app'
alias myip='ifconfig en1 | grep "inet " | cut -d" " -f2'
alias java8='setjdk 1.8'
alias java7='setjdk 1.7'

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


function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi

  echo JAVA_HOME set to $JAVA_HOME

  java -version
}

function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
