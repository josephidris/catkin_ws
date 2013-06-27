#!/usr/bin/env python
import roslib; roslib.load_manifest('al5d_arm')

import rospy
import math
import time
import geometry_msgs
from geometry_msgs.msg import Point
from geometry_msgs.msg import Quaternion

shoulder_height = 0.06985
shoulder_elbow = 0.14605
elbow_wrist = 0.1850
wrist_endpoint = 0.0873
angle_pub = rospy.Publisher("angles", Quaternion)
next_angles = Quaternion()

def kin_calc():
	rospy.init_node('kin_calc')
	coord_sub = rospy.Subscriber("coord", Point, coordangle_callback)
	while not rospy.is_shutdown():
		rospy.spin()
		
def coordangle_callback(data):
	x = data.x
	y = data.y
	z = data.z
	grip_angle = 0
	
	d = math.sqrt(x**2 + y**2)
	z_prime = z - shoulder_height
        d -= math.cos(grip_angle)*wrist_endpoint
        z_prime -= math.sin(grip_angle)*wrist_endpoint
        l1 = shoulder_elbow
        l2 = elbow_wrist
        numerator = d**2 + z_prime**2 - l1**2 - l2**2
        denominator = 2*l1*l2
        elbow_angle = math.atan2(math.sqrt(1 - (numerator/denominator)**2), numerator / denominator)
        if elbow_angle > 0:
        	elbow_angle = math.atan2(-math.sqrt(1 - (numerator / denominator)**2), numerator / denominator)
                k1 = l1 + l2 * math.cos(elbow_angle)
                k2 = l2 * math.sin(elbow_angle)
                shoulder_angle = math.atan2(z_prime, d) - math.atan2(k2, k1)
                wrist_angle = grip_angle - shoulder_angle - elbow_angle
                base_angle = math.atan2(y, x)

                next_angles.x = -base_angle + math.pi/2             #base angle
                next_angles.y = -math.pi/2 + shoulder_angle         #shoulder angle 
                next_angles.z = -elbow_angle - math.pi/2            #elbow angle
                next_angles.w = wrist_angle + 0.17444               #wrist angle
                
               	assert -1.5708 <= next_angles.x <= 1.5708, next_angles.x
		assert -0.8727 <= next_angles.y <= 0.8727, next_angles.y
		assert -1.5708 <= next_angles.z <= 1.1775, next_angles.z
		assert -0.7850 <= next_angles.w <= 0.7850, next_angles.w
		rospy.loginfo("Base angle = %f, shoulder_angle = %f, elbow_angle = %f, wrist_angle = %f",next_angles.x,next_angles.y,next_angles.z,next_angles.w)
		angle_pub.publish(next_angles)

"""def anglecoord(Quaternion) :
	base_angle = Quaternion.x
	shoulder_angle = Quaternion.y
	elbow_angle = Quaternion.z
	wrist_angle = Quaternion.w
	
	coord = Point()
	coord.x = math.sin(base_angle)*math.sin(shoulder_angle)*(-shoulder_elbow) + math.sin(base_angle)*math.cos(elbow_angle)*(elbow_wrist+wrist_endpoint)
	coord.y = math.cos(base_angle)*math.sin(shoulder_angle)*(-shoulder_elbow) + math.cos(base_angle)*math.cos(elbow_angle)*(elbow_wrist+wrist_endpoint)
	coord.z = 0.036 + shoulder_height + math.cos(shoulder_angle)*shoulder_elbow - math.sin(elbow_angle) * (elbow_wrist+wrist_endpoint)
	return coord"""

if __name__ == '__main__':
	try:
		kin_calc()
	except rospy.ROSInterruptException:
		pass
