#!/bin/bash
source /home/user/slam-ws/install/setup.bash

## launch Intel Realsense D435
ros2 launch realsense2_camera rs_launch.py align_depth.enable:=true &

## launch RTAB-Map (Mapping Mode)
ros2 launch rtabmap_launch rtabmap.launch.py \
  frame_id:=camera_link \
  args:="-d" \
  rgb_topic:=/camera/camera/color/image_raw \
  depth_topic:=/camera/camera/aligned_depth_to_color/image_raw \
  camera_info_topic:=/camera/camera/color/camera_info \
  approx_sync:=true \
  qos:=2 \
  localization:=true \
  database_path:=/home/user/slam-ws/src/app/00-map/rtabmap_1.db &

## launch rviz 
rviz2 -d /home/user/slam-ws/src/app/mapping-mode/run.rviz