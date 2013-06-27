#!/usr/bin/python

import roslib 
roslib.load_manifest('ssc32py')
roslib.load_manifest('al5d_arm')

import geometry_msgs
from geometry_msgs.msg import Quaternion

import rospy
import time, math

from ssc32py.ros_ssc32 import ROS_SSC32_CLIENT

def testclient():
	rospy.init_node('ssc32_client')
	angle_sub = rospy.Subscriber("angles", Quaternion, move_callback)
	rospy.spin()

def move_callback(data):
	base_angle = data.x
	shoulder_angle = data.y
	elbow_angle = data.z
	wrist_angle = data.w
	
	base = ROS_SSC32_Client('base')
	shoulder = ROS_SSC32_Client('shoulder')
	elbow = ROS_SSC32_Client('elbow')
	wrist = ROS_SSC32_Client('wrist')
	
	rospy.loginfo("Moving to position..")
	base.move_angle(base_angle, endgroup=False)
	shoulder.move_angle(shoulder_angle, endgroup=False)
	elbow.move_angle(elbow_angle, endgroup=False)
	wrist.move_angle(wrist_angle, endgroup=False)

	while base.is_moving(): time.sleep(0.1)
	rospy.loginfo("Complete!")	
		
if __name__ == '__main__':
	try:
		kin_calc()
	except rospy.ROSInterruptException:
		pass

