#!/usr/bin/env bash
export WORKSPACE_DIR=~/workspaces
export MACRO_DIR=~/ros-bashrc

export PATH="${MACRO_DIR}/bin:${PATH}"

_worskpace_completion() {
    local COMMAND_LIST="init source"

    COMPREPLY=($(compgen -W "$COMMAND_LIST" "${COMP_WORDS[1]}"))
}

complete -F _worskpace_completion workspace 

_workspace_cd() {
    local WORKSPACE_NAME=$1
    cd $WORKSPACE_DIR/$WORKSPACE_NAME
}

#source ~/ros-bashrc/src/workspace
source ~/ros-bashrc/src/config/workspace_repository.sh