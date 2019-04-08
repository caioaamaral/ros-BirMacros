# ros-bashrc
An optimized ~./bashrc setup for dealing with ROS environment variables

#How to Use
```
cd ~/
git clone https://github.com/caioaamaral/ros-bashrc
cd ros-bashrc
cat ros.bashrc >> ~/.bashrc

```
If you create a workspace `~/workspaces/name_ws`, add an alias at ros.bashrc following the pattern:

`alias name='setEnvironment name_ws'`

And set your workspaces file path inside ros.bashrc

`WORKSPACE_PATH=~/workspaces`

Then just type `name_ws` at terminal to reset all ROS environment variable, source and switch to `name_ws` folder.
