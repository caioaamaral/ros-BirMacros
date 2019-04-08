# ROS Environment and Aliases definitions
source /opt/ros/kinetic/setup.bash

WORKSPACE_PATH=~/workspaces

setEnvironment () {
    local WORKSPACE_NAME=$1 # Remove _ws suffix
    export EDITOR=code
    source ~/.bashrc
    source $WORKSPACE_PATH/$WORKSPACE_NAME/devel/setup.bash
    cd $WORKSPACE_PATH/$WORKSPACE_NAME
}

alias jacob='setEnvironment jacob'
alias kinova='setEnvironment kinova'
alias dyn='setEnvironment dyn'
