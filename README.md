# ros-BirMacros
An optimized ~./bashrc setup for dealing with ROS environment variables

#How to Use
```
cd ~/
git clone https://github.com/caioaamaral/ros-bashrc
cd ros-bashrc
echo source ~/ros_bashrc/ros_BirMacros.sh >> ~/.bashrc

```
1. Inside ros_BirMacros.sh set your workspacefolder root `WORKSPACE_PATH=~/workspaces`

2. Use `workspace init name_ws` to catkin config and catkin init ~/workspaces/name_ws.

**obs: An alias `name_ws` will be generated to switch to your new workspace and source its environment. Every time you use a macro generated alias, it will first reset the environment and source the new one.**

3. Just type `name_ws` whenever you want to source ~/workspaces/name_ws/devel/setup.bash

**obs2: It'll also change your default editor to Visual Code
