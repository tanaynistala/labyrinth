# ProbRob-Final-Project

To activate the new ROS2 Jazzy - Gazebo Harmonic framework, run the following command:
source /Users/tanaynistala/ros2_jazzy/activate_ros

Then, try 'ros2' or 'rviz2' in the terminal to start ROS2 Jazzy.

To test gazebo, run following commands separately in two termianls (one for server(-s) and one for gui(-g))
(IMPORTANT, both terminals should have 'source /Users/tanaynistala/.ros2_venv/activate_ros' activated)
  [1st Terminal with (.ros2_venv)] gz sim shapes.sdf -s 
  [2nd Terminal with (.ros2_venv)] gz sim -g 
===========================================================================
To make alias for fast start, run the following command to add to ~/.zprofile:
echo 'alias ros="source /Users/tanaynistala/ros2_jazzy/activate_ros"' >> ~/.zprofile && source ~/.zprofile

Then, you can start ROS2 Jazzy - Gazebo Harmonic framework by typing 'ros' in the terminal (new terminal).
You may change the alias name to your preference in above alias command.

To deactivate this workspace, run:
deactivate