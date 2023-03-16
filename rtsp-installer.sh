#!/bin/bash

source /opt/ros/noetic/setup.bash
sudo apt-get install libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev libgstreamer-plugins-bad1.0-dev libgstrtspserver-1.0-dev gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad -y
mkdir -p ros_rtsp_ws/src
cd ros_rtsp_ws/src
git clone https://github.com/PC6-SV/ROS-RTSP-Realsense
cd ..
catkin_make pkg:=ros_rtsp
source devel/setup.bash
roslaunch ros_rtsp rtsp_streams.launch
