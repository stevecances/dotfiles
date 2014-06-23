export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Alias
alias lab='cd /Users/mathieu/Documents/Lab'
alias app='cd /Users/mathieu/Documents/app'
alias teacheasy='cd /Users/mathieu/Documents/Lab/Teacheasy/teacheasy'
alias xlr='cd /Users/mathieu/dev/releaseit'
alias xldo='cd /Users/mathieu/dev/xl-deploy-online'
alias rik='kill -9 `jps | grep XLReleaseBootstrapper | sed '\''s/\([0-9]*\).*/\1/'\''`'
alias myip='ifconfig en1 | grep "inet " | cut -d" " -f2'

# Mysql
MYSQL_HOME=/usr/local/mysql/

# SDK Android
ANDROID_HOME=/Users/mathieu/Documents/App/android-sdk-17

# Groovy
GROOVY_HOME=/Users/mathieu/Documents/App/groovy
GRAILS_HOME=/Users/mathieu/Documents/App/grails

# Git
source /usr/local/git/contrib/completion/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

# Play!Framework
PLAY_HOME=/Users/mathieu/Documents/App/play
PLAY2_HOME=/Users/mathieu/Documents/App/play2

# Java
# jdk 6 
#JAVA_HOME=/Library/Java/Home
# jdk 7 
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/

# Mongo DB
MONGO_HOME=/Users/mathieu/Documents/App/mongodb

# Scala
SCALA_HOME=/usr/local/Cellar/scala/2.10.3

# Cloudbees
export BEES_HOME=/Users/mathieu/Documents/App/Cloudbees-sdk-1.5.2

# Hadoop
export HADOOP_HOME=/Users/mathieu/Documents/Lab/hadoop/techevent/hadoop-1.0.3
export FLUME_HOME=/Users/mathieu/Documents/Lab/hadoop/techevent/apache-flume-1.2.0

# vertx
#export VERTX_HOME=/Users/mathieu/Documents/App/vert.x-1.3.0.final
export VERTX_HOME=/Users/mathieu/Documents/App/vert.x-1.2.3.final

# Cassandra
export CASSANDRA_HOME=/Users/mathieu/Documents/Lab/xke/cassandra/dsc-cassandra-1.2.2

# opscenter
export OPSCENTER_HOME=/Users/mathieu/Documents/Lab/xke/cassandra/opscenter-3.0.1

# PATH
export PATH=/usr/local/bin:$CASSANDRA_HOME/bin:$OPSCENTER_HOME/bin:$VERTX_HOME/bin:$JAVA_HOME/bin:$SCALA_HOME/bin:$MYSQL_HOME/bin:$FLUME_HOME/bin:$HADOOP_HOME/bin:$SBT_HOME/bin:$BEES_HOME:$MONGO_HOME/bin:$PLAY_HOME:$PLAY2_HOME:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$GRAILS_HOME/bin:$ANDROID_HOME/tools:/usr/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/X11R6/bin:$PATH

# PS1
export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '

##
# Your previous /Users/mathieu/.bash_profile file was backed up as /Users/mathieu/.bash_profile.macports-saved_2012-03-07_at_00:15:29
##

# MacPorts Installer addition on 2012-03-07_at_00:15:29: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# XL Release
export KARMA_BROWSER='Chrome'


# LEJOS
export NXJ_HOME=/Users/mathieu/Downloads/leJOS_NXJ_0.9.1beta-2
export LD_LIBRARY_PATH=$NXJ_HOME/bin
export PATH=$NXJ_HOME/bin:$PATH


[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(jenv init -)"
