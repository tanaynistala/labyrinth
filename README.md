# [Project Name]

This project is provided as a `catkin` workspace containing several ROS packages:

- [project name]
- navigation
- slam
- simulation

## System Requirements

The packages for this project are built for [ROS Noetic](http://wiki.ros.org/noetic), which is additionally dependent on Ubuntu Focal (20.04). Instructions for installing ROS Noetic can be found [here](http://wiki.ros.org/noetic/Installation/Ubuntu).

## Installation & Usage

The packages provided can be installed by running `catkin_make` within this repository (at the current level). Once installed, source the project environment:

```bash
source ./devel/setup.bash
```

The project demonstrations can then be run. To run the exploration demonstration, where the robot explores the environment autonomously, run:

```bash
roslaunch [project_name] explore.launch slam_methods:=[gmapping,hector,karto] map:=maze[1,2,3,4,5]
```

To run the maze solver, run:

```bash
roslaunch [project_name] navigate.launch slam_methods:=[gmapping,hector,karto] map:=maze[1,2,3,4,5]
```

This will launch an `rviz` visualization where you can set a navigation goal (using the button on the UI) to tell the robot where the maze's exit is. You can use the accompanying Gazebo visualization to find this exit. 