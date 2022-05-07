#!/usr/bin/env python3
# A time ROS publisher node in Python
import rospy
from std_msgs.msg import String
import os
import rospy
from std_msgs.msg import String
import time
import subprocess

class Publisher():
    def __init__(self):
        self.node_name = "time_publisher"
        topic_name = "timer"
        self.pub = rospy.Publisher(topic_name, String, queue_size=10)
        rospy.init_node(self.node_name, anonymous=True)
        self.rate = rospy.Rate(5) # hz
        self.ctrl_c = False
        rospy.on_shutdown(self.shutdownhook) 
        rospy.loginfo(f"The '{self.node_name}' node is active...")
        self.saveTime = rospy.Time.now() + rospy.Duration(60)
        self.init = True
        self.init_time = 0
        self.map_dir = '/home/winslow/catkin_ws/src/real_robot/maps/'
        self.map_name = 'explore'
        self.save_map = True
        self.world = True
        self.launch_file = True
        self.moving = True


    def shutdownhook(self):
        print(f"Stopping the '{self.node_name}' node at: {rospy.get_time()}")
        self.ctrl_c = True

    def worldLaunch(self):
        # subprocess.run(["roslaunch", "acs6121", "arena.launch"])
        subprocess.run(["roslaunch", "turtlebot3_slam", 
        "turtlebot3_slam.launch"])
        self.world = False

    def saveMap(self):
        if not os.path.exists(self.map_dir):
            os.makedirs(dir)
        
        subprocess.run(["rosrun", "map_server", 
        "map_saver", "-f", dir+mapname])
        self.save_map = False
        

    def launchFile(self):
        string = strcat()
        subprocess.run(["roslaunch", "real_robot", "square.launch", "map_name:=" + self.map_name ])
        self.launch_file = False

    def move(self):
        subprocess.run(["rosrun", "real_robot", "moving.py"])
        self.moving = False

    def main_loop(self):
        while not self.ctrl_c:
            if self.init:
                self.init_time = rospy.get_time()
                self.init = False
            publisher_message = f"rospy time is: {rospy.get_time()}"
            publisher_message2 = self.saveTime
            print(rospy.get_time() - self.init_time)
            # if self.world:
            #     self.worldLaunch()
            # if (rospy.get_time() - self.init_time > 0.1) and self.save_map:
            #     self.saveMap()
            # if (rospy.get_time() - self.init_time > 1) and self.launchFile:
            #     self.launchFile()
            # if (rospy.get_time() - self.init_time > 2) and self.moving:
            #     self.move()
            self.pub.publish(publisher_message)
            self.rate.sleep()

if __name__ == '__main__':
    publisher_instance = Publisher()
    try:
        publisher_instance.main_loop()
    except rospy.ROSInterruptException:
        pass