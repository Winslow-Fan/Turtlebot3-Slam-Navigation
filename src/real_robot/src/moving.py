#!/usr/bin/env python3  
import rospy
import actionlib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, Point, Quaternion, Twist
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from tf.transformations import quaternion_from_euler
from visualization_msgs.msg import Marker
from math import radians, pi
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from math import sqrt, pow, pi, cos, sin
import argparse
from save import MapSave


class MoveBaseSquare():
    def callback_function(self, odom_data):
        # obtain the orientation and position co-ords:
        or_x = odom_data.pose.pose.orientation.x
        or_y = odom_data.pose.pose.orientation.y
        or_z = odom_data.pose.pose.orientation.z
        or_w = odom_data.pose.pose.orientation.w
        pos_x = odom_data.pose.pose.position.x
        pos_y = odom_data.pose.pose.position.y

        # convert orientation co-ords to roll, pitch & yaw (theta_x, theta_y, theta_z):
        (roll, pitch, yaw) = euler_from_quaternion([or_x, or_y, or_z, or_w], 'sxyz')
        # print(f"position_x = '{pos_x}', position_y = '{pos_y}', position_thetaz = '{yaw}'")
        self.x = pos_x
        self.y = pos_y
        if self.start_up:
            self.x0 = pos_x
            self.y0 = pos_y
            self.theta_z0 = yaw
            self.start_up = False

    def __init__(self):
        # parser = argparse.ArgumentParser()
        # parser.add_argument('--map_dir', type=str, default='/home/student/catkin_ws/src/team13/maps/', help='The dir of saved map')
        # self.arg = parser.parse_args()

        # self.map_dir = self.arg.map_dir
        print(rospy.has_param('/mapdir'))
        self.map_dir = rospy.get_param('mapdir')

        self.map_name = 'explore'


        self.x0 = 0
        self.y0 = 0
        self.theta_z0 = 0
        self.start_up = True
        # self.sub = rospy.Subscriber('odom_describer', Odometry, self.callback_function)
        self.sub = rospy.Subscriber('odom', Odometry, self.callback_function)
        rospy.init_node('nav_test', anonymous=False)

        self.ctrl_c = False
        rospy.on_shutdown(self.shutdownhook)

        rospy.loginfo(f"{self.x0}, {self.y0}, {self.theta_z0}")

        
        # Create a list to hold the target quaternions (orientations)
        quaternions = list()
        
        # First define the corner orientations as Euler angles
        euler_angles = list()
        euler_angles = [self.theta_z0+1.6,self.theta_z0+1.6,self.theta_z0+1.2, self.theta_z0-1.6, self.theta_z0, self.theta_z0]
        # euler_angles = [self.theta_z0+1.6,self.theta_z0+1.6, self.theta_z0+3, self.theta_z0, self.theta_z0, 0, 0, 0, 0]
        for i, angle in enumerate(euler_angles):
            if angle > pi:
                euler_angles[i] -= 2*pi
            elif angle < -pi:
                euler_angles[i] += 2*pi
        rospy.loginfo(f"{euler_angles}")

        # Then convert the angles to quaternions
        for angle in euler_angles:
            q_angle = quaternion_from_euler(0, 0, angle, axes='sxyz')
            q = Quaternion(*q_angle)
            quaternions.append(q)
        
        # Create a list to hold the waypoint poses
        self.waypoints = list()
        
        # Append each of the four waypoints to the list.  Each waypoint
        # is a pose consisting of a position and orientation in the map frame.

        self.waypoints.append(Pose(Point(self.x0+cos(self.theta_z0), self.y0+sin(self.theta_z0), 0), quaternions[0]))
        self.waypoints.append(Pose(Point(self.x0+cos(self.theta_z0), self.y0+sin(self.theta_z0), 0), quaternions[1]))
        self.waypoints.append(Pose(Point(self.x0+cos(self.theta_z0)-sin(self.theta_z0), self.y0+sin(self.theta_z0)+cos(self.theta_z0), 0), quaternions[2]))
        self.waypoints.append(Pose(Point(self.x0-cos(self.theta_z0)-sin(self.theta_z0), self.y0-sin(self.theta_z0)+cos(self.theta_z0), 0), quaternions[3]))
        self.waypoints.append(Pose(Point(self.x0-cos(self.theta_z0)+sin(self.theta_z0), self.y0-sin(self.theta_z0)-cos(self.theta_z0), 0), quaternions[4]))
        self.waypoints.append(Pose(Point(self.x0+cos(self.theta_z0)+sin(self.theta_z0), self.y0+sin(self.theta_z0)-cos(self.theta_z0), 0), quaternions[5]))

        
        # Initialize the visualization markers for RViz
        self.init_markers()
        
        # Set a visualization marker at each waypoint        
        for waypoint in self.waypoints:           
            p = Point()
            p = waypoint.position
            self.markers.points.append(p)
            
        # Publisher to manually control the robot (e.g. to stop it, queue_size=5)
        self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=5)
        
        # Subscribe to the move_base action server
        self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        
        rospy.loginfo("Waiting for move_base action server...")
        
        # Wait 60 seconds for the action server to become available
        self.move_base.wait_for_server(rospy.Duration(3))
        
        rospy.loginfo("Connected to move base server")
        rospy.loginfo("Starting navigation test")

    def main_loop(self):
        # Initialize a counter to track waypoints
        i = 0
        
        # Cycle through the four waypoints
        while i < len(self.waypoints) and not rospy.is_shutdown():
            # Update the marker display
            self.marker_pub.publish(self.markers)
            
            # Intialize the waypoint goal
            goal = MoveBaseGoal()
            
            # Use the map frame to define goal poses
            goal.target_pose.header.frame_id = 'map'
            
            # Set the time stamp to "now"
            goal.target_pose.header.stamp = rospy.Time.now()
            
            # Set the goal pose to the i-th waypoint
            goal.target_pose.pose = self.waypoints[i]
            rospy.loginfo(f"{self.waypoints[i]}")
            
            # Start the robot moving toward the goal
            self.move(goal)
            
            i += 1
        
    def move(self, goal):
            # Send the goal pose to the MoveBaseAction server
            self.move_base.send_goal(goal)
            # rospy.loginfo(f"{waypoints[i]}")
            # Allow 1 minute to get there
            finished_within_time = self.move_base.wait_for_result(rospy.Duration(30)) 
            
            # If we don't get there in time, abort the goal
            if not finished_within_time:
                self.move_base.cancel_goal()
                rospy.loginfo("Timed out achieving goal")
            else:
                # We made it!
                state = self.move_base.get_state()
                if state == GoalStatus.SUCCEEDED:
                    rospy.loginfo("Goal succeeded!")
                    
    def init_markers(self):
        # Set up our waypoint markers
        marker_scale = 0.2
        marker_lifetime = 0 # 0 is forever
        marker_ns = 'waypoints'
        marker_id = 0
        marker_color = {'r': 1.0, 'g': 0.7, 'b': 1.0, 'a': 1.0}
        
        # Define a marker publisher.
        self.marker_pub = rospy.Publisher('waypoint_markers', Marker, queue_size=5)
        
        # Initialize the marker points list.
        self.markers = Marker()
        self.markers.ns = marker_ns
        self.markers.id = marker_id
        self.markers.type = Marker.CUBE_LIST
        self.markers.action = Marker.ADD
        self.markers.lifetime = rospy.Duration(marker_lifetime)
        self.markers.scale.x = marker_scale
        self.markers.scale.y = marker_scale
        self.markers.color.r = marker_color['r']
        self.markers.color.g = marker_color['g']
        self.markers.color.b = marker_color['b']
        self.markers.color.a = marker_color['a']
        
        self.markers.header.frame_id = 'odom'
        self.markers.header.stamp = rospy.Time.now()
        self.markers.points = list()

    def shutdownhook(self):
        rospy.loginfo("Stopping the robot...")
        # Cancel any active goals
        self.move_base.cancel_goal()
        rospy.sleep(2)
        # Stop the robot
        self.cmd_vel_pub.publish(Twist())
        # Save map
        MapSave(self.map_dir, self.map_name)
        rospy.sleep(1)
        self.ctrl_c = True

if __name__ == '__main__':
    # while 
    Main = MoveBaseSquare()
    try:
        Main.main_loop()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
# # import roslib; roslib.load_manifest('rbx1_nav')  
# import rospy  
# import actionlib  
# from actionlib_msgs.msg import *  
# from geometry_msgs.msg import Pose, Point, Quaternion, Twist  
# from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal  
# from tf.transformations import quaternion_from_euler  
# from visualization_msgs.msg import Marker  
# from math import radians, pi

# class MoveBaseTest():
#     def __init__(self):
#         node_name = 'nav_test'
#         rospy.init_node(node_name, anonymous=False)
#         rospy.on_shutdown(self.shutdown)
#         waypoints = list()
#         quaterions = list()
#         quaterions.append(Quaternion(0, 0, 0, 1.0))
#         waypoints.append(Point(Pose(100, 100, 0), quaterions[0]))

#         self.init_markers()
#         for waypoint in waypoints:
#             p = Point()
#             p = waypoint.position
#             self.markers.points.append(p)

#         self.cmd_vel_pub = rospy.Publisher('cmd_vel', Twist)  
          
#         # Subscribe to the move_base action server  
#         # ??????move_base??????????????????  
#         self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)  
          
#         rospy.loginfo("Waiting for move_base action server...")  
          
#         # Wait 60 seconds for the action server to become available  
#         # ??????move_base???????????????  
#         self.move_base.wait_for_server(rospy.Duration(5))  
          
#         rospy.loginfo("Connected to move base server")  
#         rospy.loginfo("Starting navigation test")  
          
#         # Initialize a counter to track waypoints  
#         # ???????????????????????????????????????????????????  
#         i = 0  
#         while i < len(waypoints) and not rospy.is_shutdown():  
#             # Update the marker display  
#             # ???????????????????????????????????????????????????????????????????????????????????????  
#             self.marker_pub.publish(self.markers)  
              
#             # Intialize the waypoint goal  
#             # ?????????goal???MoveBaseGoal??????  
#             goal = MoveBaseGoal()  
              
#             # Use the map frame to define goal poses  
#             # ??????map???frame??????goal???frame id  
#             goal.target_pose.header.frame_id = 'map'  
              
#             # Set the time stamp to "now"  
#             # ???????????????  
#             goal.target_pose.header.stamp = rospy.Time.now()  
              
#             # Set the goal pose to the i-th waypoint  
#             # ?????????????????????????????????????????????  
#             goal.target_pose.pose = waypoints[i]  
              
#             # Start the robot moving toward the goal  
#             # ???????????????  
#             self.move(goal)  
              
#             i += 1 

#     def move(self, goal):  
#             # Send the goal pose to the MoveBaseAction server  
#             # ????????????????????????MoveBaseAction????????????  
#             self.move_base.send_goal(goal)  
              
#             # Allow 1 minute to get there  
#             # ??????1?????????????????????  
#             finished_within_time = self.move_base.wait_for_result(rospy.Duration(20))   
              
#             # If we don't get there in time, abort the goal  
#             # ????????????????????????????????????????????????  
#             if not finished_within_time:  
#                 self.move_base.cancel_goal()  
#                 rospy.loginfo("Timed out achieving goal")  
#             else:  
#                 # We made it!  
#                 state = self.move_base.get_state()  
#                 if state == GoalStatus.SUCCEEDED:  
#                     rospy.loginfo("Goal succeeded!")  
                      
#     def init_markers(self):  
#         # Set up our waypoint markers  
#         # ?????????????????????  
#         marker_scale = 0.2  
#         marker_lifetime = 0 # 0 is forever  
#         marker_ns = 'waypoints'  
#         marker_id = 0  
#         marker_color = {'r': 1.0, 'g': 0.7, 'b': 1.0, 'a': 1.0}  
          
#         # Define a marker publisher.  
#         # ??????????????????????????????  
#         self.marker_pub = rospy.Publisher('waypoint_markers', Marker)  
          
#         # Initialize the marker points list.  
#         # ???????????????????????????  
#         self.markers = Marker()  
#         self.markers.ns = marker_ns  
#         self.markers.id = marker_id  
#         self.markers.type = Marker.SPHERE_LIST  
#         self.markers.action = Marker.ADD  
#         self.markers.lifetime = rospy.Duration(marker_lifetime)  
#         self.markers.scale.x = marker_scale  
#         self.markers.scale.y = marker_scale  
#         self.markers.color.r = marker_color['r']  
#         self.markers.color.g = marker_color['g']  
#         self.markers.color.b = marker_color['b']  
#         self.markers.color.a = marker_color['a']  
          
#         self.markers.header.frame_id = 'map'  
#         self.markers.header.stamp = rospy.Time.now()  
#         self.markers.points = list()  
  
#     def shutdown(self):  
#         rospy.loginfo("Stopping the robot...")  
#         # Cancel any active goals  
#         self.move_base.cancel_goal()  
#         rospy.sleep(2)  
#         # Stop the robot  
#         self.cmd_vel_pub.publish(Twist())  
#         rospy.sleep(1)  
  
# if __name__ == '__main__':  
#     try:  
#         MoveBaseTest()  
#     except rospy.ROSInterruptException:  
#         rospy.loginfo("Navigation test finished.")
#!/usr/bin/env python
# moveBaseSquare.py
