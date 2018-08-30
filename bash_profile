export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# Git
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

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

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# fzf : command line fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Alias
alias java8='setjdk 1.8'
alias java10='setjdk 10'
alias agg="ag -C 2 --ignore-dir={.git,log,node_modules,vendor,tmp,angular,sql_dump,*.js} $1"
alias gl="git lg -n 10"

#################################### Servio ################################

BLACK=$(tput setaf 0)
BLACK_BG=$(tput setab 0)
RED=$(tput setaf 1)
RED_BG=$(tput setab 1)
GREEN=$(tput setaf 2)
GREEN_BG=$(tput setab 2)
LIME_YELLOW=$(tput setaf 190)
LIME_YELLOW_BG=$(tput setab 190)
YELLOW=$(tput setaf 3)
YELLOW_BG=$(tput setab 3)
POWDER_BLUE=$(tput setaf 153)
POWDER_BLUE_BG=$(tput setab 153)
BLUE=$(tput setaf 4)
BLUE_BG=$(tput setab 4)
MAGENTA=$(tput setaf 5)
MAGENTA_BG=$(tput setab 5)
CYAN=$(tput setaf 6)
CYAN_BG=$(tput setab 6)
WHITE=$(tput setaf 7)
WHITE_BG=$(tput setab 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)


__kube_ps1()
{
    CONTEXT=$(cat ~/.kube/config | grep "current-context:" --color=NO | sed "s/current-context: //")

    if [ -n "$CONTEXT" ]; then
        if [ "$CONTEXT" = "prod" ]; then
            echo -e "😬😱${BRIGHT}${WHITE}${RED_BG}${BLINK} ${CONTEXT} ${NORMAL}😬😱"
        else
            echo -e "${YELLOW}${CONTEXT}${NORMAL}"
        fi
    fi
}

__gcloud_ps1()
{
    CONTEXT=$(cat ~/.config/gcloud/active_config)

    if [ -n "$CONTEXT" ]; then
        if [ "$CONTEXT" = "prod" ]; then
            echo -e "😬😱${BRIGHT}${WHITE}${RED_BG}${BLINK} ${CONTEXT} ${NORMAL}😬😱"
        else
            echo -e "${YELLOW}${CONTEXT}${NORMAL}"
        fi
    fi
}

alias dl='cd ~/Downloads'
alias projects='cd /Users/mbigorne/projects'
alias servio='cd /Users/mbigorne/projects/servio'
alias ng-run-candidat='servio && cd portail-candidat && ./node_modules/.bin/ng run candidat:serve'
alias ng-run-gestion='servio && cd portail-candidat && ./node_modules/.bin/ng run gestion:serve'
alias cluster-dev='kubectx dev && gcloud config configurations activate dev'
alias cluster-recette='kubectx recette && gcloud config configurations activate recette'
alias cluster-preprod='kubectx preprod && gcloud config configurations activate preprod'

# PS1
#export PS1='\W$(__git_ps1 " (%s)")\$ '
__parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}


export PS1='\[${CYAN}\]k:\[${NORMAL}\]$(__kube_ps1)\[${GREEN}\] \[${CYAN}\]g:\[${NORMAL}\]$(__gcloud_ps1)\[${NORMAL}\]\[${POWDER_BLUE}\] \w\[${MAGENTA}\]$(__git_ps1 " (%s)")\[${NORMAL}\]\n$ '
