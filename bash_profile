export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# Git
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

# PS1
export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Alias
alias java8='setjdk 1.8'
alias agg="ag -C 2 --ignore-dir={ownpage-site,.git,log,node_modules,vendor,tmp,angular,sql_dump,*.js} $1"
alias gl="git lg -n 10"
