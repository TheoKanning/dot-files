# Git Vars
export GITHUB_USERNAME='theokanning'

# Add homebrew to path
export PATH="/usr/local/bin::$PATH"
# Add my bin folder to path
export PATH="$HOME/bin:/usr/local/sbin:$PATH"

# ctags
export CTAGS='-f ./.tags --exclude=.git --exclude=build'
 
# grep colors
export GREP_COLOR='1;31'
export GREP_OPTIONS='--color=auto'

# LS Colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Docker/Kubernetes
alias kc=kubectl
alias pods='kubectl get pods'
alias docker-down='docker-compose down'
alias docker-up='docker-compose up -d'
alias docker-stop='docker stop $(docker ps -a)'

alias gw='./gradlew'

function g-findword() {
    grep --include '*.java' --include '*.groovy' --include '*.gsp' --include '*.gradle' -rE "\<${1}\>" .
}

# ROS
alias cm='catkin_make && source devel/setup.bash'
source /opt/ros/kinetic/setup.bash 2> /dev/null
