# Bloom Vars
export GITHUB_USERNAME='aaronzirbes'
export BLOOM_GIT_SANDBOX="$HOME/dev/grails/bloom"

# Adding ruby gems to path
export PATH="/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH"

. $BLOOM_GIT_SANDBOX/dev_scripts/bash/bitbucket-sandbox.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/bloom-plugins.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/ctags.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/grep-colors.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/groovy-grails.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/java-home.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/ls-colors.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/mysql.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/rabbitmq.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/truecrypt-config-switch.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/markdown.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/vim_dev.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/prompt.sh

export GRAILS_OPTS="-Xms2g -Xmx2g -XX:PermSize=128m -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -server"


. ~/lib/git-prompt.sh

function bloom-update-plugins() {
    pushd ~/bc > /dev/null
    current_branch=`git branch --no-color | grep -E '^\* ' |sed -e 's/^\* //'`
    git pull origin ${current_branch} && grails --non-interactive clean && grails --non-interactive compile && grails maven-install
    popd > /dev/null

    pushd ~/bd > /dev/null
    current_branch=`git branch --no-color | grep -E '^\* ' |sed -e 's/^\* //'`
    git pull origin ${current_branch} && grails --non-interactive clean && grails --non-interactive compile && grails maven-install
    popd > /dev/null
}

alias ll='ls -l'
alias getopt="$(brew --prefix gnu-getopt)/bin/getopt"

function git-bu() {
    branch=$1
    projects="webapp_bloomhealth webapp_bhbo lib_paymentSchedule lib_common lib_domain"
    for project in $projects; do
        pushd $BLOOM_GIT_SANDBOX/$project > /dev/null
        git fetch --all
        git pull
        popd > /dev/null
    done
}

export simple_arrow='→'

function scrap() {
    vim ~/.scrap.groovy
}

java6

export simple_fail='!'
export fancy_arrow='➦'
export fancy_fail='✘'
export beer='🍺 '

#export PS1='\e[1;32m\w\e[1;37m$(hgmin_ps1)$(gitmin_ps1)\e[1;34m `date`\e[0m\n${fancy_arrow} '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export PS1='\e[1;32m\w\e[1;37m$(__git_ps1 " [%s]")\e[1;34m `date`\e[0m\n${beer} '

export PATH="$HOME/bin:/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/azirbes/.gvm/bin/gvm-init.sh" && ! $(which gvm-init.sh) ]] && source "/Users/azirbes/.gvm/bin/gvm-init.sh"

