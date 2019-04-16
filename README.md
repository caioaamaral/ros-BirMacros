# ros-BirMacros
An optimized ~./bashrc setup for dealing with ROS environment variables

#How to Use
```
cd ~/
git clone https://github.com/caioaamaral/ros-bashrc
cd ros-bashrc
echo source ~/ros_bashrc/ros_BirMacros.sh >> ~/.bashrc

```
Inside ros_BirMacros.sh set your workspacefolder root `WORKSPACE_PATH=~/workspaces`

Use `workspace init name_ws` to catkin config and catkin init ~/workspaces/name_ws.

An alias name_ws will be generated to switch to your new workspace and source its environment. Every time you use a macro generated alias, it will first reset the environment and source the new one.
