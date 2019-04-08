# ros-bashrc
An optimized ~./bashrc setup for dealing with ROS environment variables

#How to Use
```
cd ~/
git clone https://github.com/caioaamaral/ros-bashrc
cd ros-bashrc
cat ros.bashrc >> ~/.bashrc

```
If you creat a workspace called name_ws, add an alias at ros.bashrc following the pattern:
`alias name='setEnvironment name'`

Then just type `name` at terminal to source and cd to name_ws
