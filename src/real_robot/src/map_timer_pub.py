#!/usr/bin/env python3
import rospy
from std_msgs.msg import String`

class TimerPub():
    def __init__(self):
        self.node_name = "map_timer_pub"
        topic_name = "map_timer"
        self.pub = rospy.Publisher(topic_name, String, queue_size=10)
        rospy.init_node(self.node_name, anonymous=True)
        self.rate = rospy.Rate(0.2)

        self.ctrl_c = False

        rospy.on_shutdown(self.shutdownhook)

        rospy.loginfo(f"The '{self.node_name}' node is active")

        self.save = rospy.Time.now() + rospy.Duration(60)

    def shutdownhook(self):
        print("Stopping node ....")
        self.ctrl_c = True

    def main_loop(self):
        while not self.ctrl_c:
            pubmsg = f"{rospy.get_time()}"
            self.pub.publish(pubmsg)
            self.rate.sleep()

if __name__=='__main__':
    timer = TimerPub()
    try:
        timer.main_loop()
    except rospy.ROSInterruptException:
        pass
