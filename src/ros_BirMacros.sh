#!/usr/bin/env sh

# ROS Environment and Aliases definitions
#TODO: 

WORKSPACE_DIR=~/workspaces
MACRO_DIR=~/ros-bashrc

if [ ! -d "$WORKSPACE_DIR" ]; then
    echo "WORKSPACE_DIR is not set yet. "
fi

export PATH="${MACRO_DIR}/bin:${PATH}"

setEnvironment () {
    local WORKSPACE_NAME=$1
    source ~/.bashrc
    source $WORKSPACE_DIR/$WORKSPACE_NAME/devel/setup.bash
    cd $WORKSPACE_DIR/$WORKSPACE_NAME
    if [[ $2 = --code ]]; then
        code $WORKSPACE_DIR/$WORKSPACE_NAME
    fi
}

workspace(){
    if [ $1 == init ]; then
        cd $WORKSPACE_DIR
        mkdir -p $2/src
        cd $WORKSPACE_DIR/$2
        catkin config
        catkin init
        setEnvironment $2
        echo "alias $2='setEnvironment $2'" >> ~/ros-bashrc/ros_BirMacros.sh
    fi
}

alias jacob_ws='setEnvironment jacob_ws'
alias kinova_ws='setEnvironment kinova_ws'
alias dyn_ws='setEnvironment dyn_ws'
alias pt_ws='setEnvironment pt_ws'
alias kinova_b='setEnvironment kinova_b'
alias pybullet='setEnvironment pybullet'
alias pybullet_ws='setEnvironment pybullet_ws'
alias dothkill='setEnvironment dothkill'
alias doogie_ws='setEnvironment doogie_ws'
