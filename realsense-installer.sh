#!/bin/bash

sudo apt-get install ros-noetic-realsense2-camera-* -y
source /opt/ros/noetic/setup.bash
roslaunch realsense2_camera rs_camera.launch
