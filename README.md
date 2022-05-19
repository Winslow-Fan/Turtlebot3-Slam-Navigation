# Turtlebot3-Slam-Navigation

Team project for ACS6121 Mobile Robots, team 13 in University of Sheffield, UK.

## Execution
First, to launch the simulation environment, run:
```
roslaunch acs6121 arena.launch
```

You can use the model rotation button in gazebo to adjust the yaw angle of the arena world

Then, to launch other nodes, run:
```
roslaunch real_robot real_slam.launch
```

To let it move, run:
```
rosrun real_robot moving.py
```

*update log*
v3.2 the coordinates are determined by the initial yaw angle.
v4.0 the map saving function is embedded in the moving.py, in shutdownhook()

**Not complete yet**

For experiment and monitoring output, the moving.py has not been embedded into the launch file yet.