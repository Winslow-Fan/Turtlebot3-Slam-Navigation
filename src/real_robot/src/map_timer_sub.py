#!/usr/bin/env python3
import rospy
from std_msgs.msg import String`
import os
import time
from save import MapSave

class TimeSub():
    def callback(self, topic_msg):
        from pathlib import Path
        f = '/home/'

        f = Path(f.strip())
        if f.exists() and f.is_dir():
            print('continuing')
        else:
            print('输入的路径不存在或不正确，请重新输入！')
        keyword = 'catkin_ws'
        result = list(f.rglob(keyword))
        if len(result) != 0:
            print(result)
        dir = result + "src/real_robot/maps"
        map = "explore"

        MapSave(dir, map)

        print("Map saving")

    def __init__(self):
        self.node_name = "map_timer_sub"
        topic_name = "map_timer"
        rospy.init_node(self.node_name, anonymous=True)
        self.sub = rospy.Subscriber(topic_name, String, self.callback)
        rospy.loginfo(f"The '{self.node_name}' node is active")

    def main_loop(self):
        rospy.spin()

if __name__=='__main__':
    sub = TimeSub()
    try:
        sub.main_loop()
    except rospy.ROSInterruptException:
        pass