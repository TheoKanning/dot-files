# Git Vars
export GITHUB_USERNAME='aaronzirbes'
export BLOOM_GIT_SANDBOX="$HOME/dev/grails/bloom"

# Add homebrew to path
export PATH="/usr/local/bin::$PATH"
# Add my bin folder to path
export PATH="$HOME/bin:/usr/local/sbin:$PATH"
# Adding ruby gems to path
export PATH="/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH"
# Adding NPM to path
export PATH="/usr/local/share/npm/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ctags
export CTAGS='-f ./.tags' 
 
# grep colors
export GREP_COLOR='1;31'
export GREP_OPTIONS='--color=auto'

# LS Colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

. $HOME/lib/dot-files/groovy-grails.sh
. $HOME/lib/dot-files/vim_dev.sh
. $HOME/lib/dot-files/server-aliases.sh

export JAVA_OPTS='-Djava.awt.headless=true -Xms1536m -Xmx1536m -XX:+UseConcMarkSweepGC'

export GOPATH="$HOME/dev/go"
# Add Golang to path
export PATH="$GOPATH/bin:$PATH"

alias ll='ls -l'
alias getopt="$(brew --prefix gnu-getopt)/bin/getopt"
alias gh='hub browse'

function g-findword() {
    grep --include '*.java' --include '*.groovy' --include '*.gsp' --include '*.gradle' -rE "\<${1}\>" .
}

function j-findword() {
    grep --include '*.js' --include '*.html' --include '*.css' -rE "\<${1}\>" .
}

alias gr-install="gradle pTML -Psnapshot=true"

export simple_arrow='→'

function scrap() {
    vim ~/.scrap.groovy
}

export simple_fail='!'
export fancy_arrow='➦'
export fancy_fail='✘'
export beer='🍺 '

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    #GIT_PROMPT_THEME=Default
    GIT_PROMPT_THEME=Solarized
    # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
    GIT_PROMPT_END='\e[1;34m `date`\e[0m\n${beer} '

   # as last entry source the gitprompt script
   # GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
   # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme

    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source "$(brew --prefix bash-completion)/etc/bash_completion"


# Docker port
#export DOCKER_CERT_PATH=/Users/ajz/.boot2docker/certs/boot2docker-vm
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ajz/.docker/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# MacBook 15" OPI
export DOCKER_CERT_PATH=/Users/ajz/.boot2docker/certs/boot2docker-vm

alias pyserve='python -m SimpleHTTPServer'

if [ -r $HOME/dev/peoplenet/pnetaws.awscreds ]; then
    . $HOME/dev/peoplenet/pnetaws.awscreds
fi

if [ -r $HOME/dev/zirbes.awscreds ]; then
    . $HOME/dev/zirbes.awscreds
fi

PermSize=128m;
MaxPermSize=512m;

if [ -d /usr/local/kafka/kafka_2.11-0.8.2.0/bin ]; then
    export PATH="${PATH}:/usr/local/kafka/kafka_2.11-0.8.2.0/bin"
fi

# Source AWS Creds
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.5.3/libexec"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.1.0/libexec"

export ANDROID_SDK_HOME="/Users/ajz/dev/android/sdk/24.3.3/android-sdk-macosx"

set -o vi

# Java Environment manager
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
#jenv global 1.8

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" && ! $(which gvm-init.sh) ]] && source "$HOME/.gvm/bin/gvm-init.sh"
