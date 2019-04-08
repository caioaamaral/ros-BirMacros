# ROS Environment and Aliases definitions
source /opt/ros/kinetic/setup.bash export EDITOR=code

WORKSPACE_PATH=~/workspaces

setEnvironment () {
    local WORKSPACE_NAME=$1
    source ~/.bashrc
    source $WORKSPACE_PATH/$WORKSPACE_NAME/devel/setup.bash
    cd $WORKSPACE_PATH/$WORKSPACE_NAME
}

workspace(){
    if [ $1 == init ]; then
        cd $WORKSPACE_PATH
        mkdir -p $2/src
        cd $WORKSPACE_PATH/$2
        catkin config
        catkin init
        setEnvironment $2
        echo "alias $2='setEnvironment $2'" >> ~/.bashrc
    fi
}

alias jacob_ws='setEnvironment jacob_ws'
alias kinova_ws='setEnvironment kinova_ws'
alias dyn_ws='setEnvironment dyn_ws'
