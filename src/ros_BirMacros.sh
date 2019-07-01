#!/usr/bin/env sh

# ROS Environment and Aliases definitions
#TODO: 

if [ ! -d "$WORKSPACE_DIR" ]; then
    echo "WORKSPACE_DIR is not set yet. "
fi

_set_environment() {
    local WORKSPACE_NAME=$1
    source ~/.bashrc
    source $WORKSPACE_DIR/$WORKSPACE_NAME/devel/setup.bash
    cd $WORKSPACE_DIR/$WORKSPACE_NAME
    if [[ $2 = --code ]]; then
        code $WORKSPACE_DIR/$WORKSPACE_NAME
    fi
}

_workspace() {
    if [ $1 == init ]; then
        cd $WORKSPACE_DIR
        mkdir -p $2/src
        cd $WORKSPACE_DIR/$2
        catkin config
        catkin init
        _set_environment $2
        echo "alias $2='_set_environment $2'" >> ~/ros-bashrc/src/ros_BirMacros.sh
    fi

    if [  ]; then
        _set_environment $2
    fi
}

alias jacob_ws='_set_environment jacob_ws'
alias kinova_ws='_set_environment kinova_ws'
alias dyn_ws='_set_environment dyn_ws'
alias pt_ws='_set_environment pt_ws'
alias kinova_b='_set_environment kinova_b'
alias pybullet='_set_environment pybullet'
alias pybullet_ws='_set_environment pybullet_ws'
alias doogie_ws='_set_environment doogie_ws'
