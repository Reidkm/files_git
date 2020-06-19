#!/bin/bash

sudo docker start d435i 
sudo docker exec -it d435i bash -c 'source ~/catkin_ws/devel/setup.bash;roslaunch realsense2_camera rs_camera.launch '

  
#gnome-terminal -x bash -c 'echo $DATE'
#gnome-terminal -x bash -c 'sudo docker exec -it -w /public d435i bash ;exec bash'
#gnome-terminal -x bash -c 'sudo docker exec -it -w /public d435i bash ls.sh'
#gnome-terminal -x bash -c 'sudo docker exec -it  d435i bash exec roslaunch realsense2_camera rs_camera.launch ;exec bash'
#roslaunch realsense2_camera rs_camera.launch 
#gnome-terminal -x bash -c 'sudo docker exec -it -w /public d435i bash pwd'

#x=1
#while [ $x -le 15 ]
#do
#  echo "countdown $x"
#  x=$(( $x + 1 ))
#  sleep 1
#done


#sudo docker exec -it -w /public mynteye bash start_mynteyebag_record_docker.sh

#udo docker exec -it -w /matt mynteye bash start_mynteye_docker.sh



