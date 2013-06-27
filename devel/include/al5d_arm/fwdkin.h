/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/joseph/catkin_ws/src/al5d_arm/msg/fwdkin.msg
 *
 */


#ifndef AL5D_ARM_MESSAGE_FWDKIN_H
#define AL5D_ARM_MESSAGE_FWDKIN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace al5d_arm
{
template <class ContainerAllocator>
struct fwdkin_
{
  typedef fwdkin_<ContainerAllocator> Type;

  fwdkin_()
    : base_angle(0.0)
    , shoulder_angle(0.0)
    , elbow_angle(0.0)
    , wrist_angle(0.0)
    , gripper_percent(0.0)  {
    }
  fwdkin_(const ContainerAllocator& _alloc)
    : base_angle(0.0)
    , shoulder_angle(0.0)
    , elbow_angle(0.0)
    , wrist_angle(0.0)
    , gripper_percent(0.0)  {
    }



   typedef float _base_angle_type;
  _base_angle_type base_angle;

   typedef float _shoulder_angle_type;
  _shoulder_angle_type shoulder_angle;

   typedef float _elbow_angle_type;
  _elbow_angle_type elbow_angle;

   typedef float _wrist_angle_type;
  _wrist_angle_type wrist_angle;

   typedef float _gripper_percent_type;
  _gripper_percent_type gripper_percent;




  typedef boost::shared_ptr< ::al5d_arm::fwdkin_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::al5d_arm::fwdkin_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct fwdkin_

typedef ::al5d_arm::fwdkin_<std::allocator<void> > fwdkin;

typedef boost::shared_ptr< ::al5d_arm::fwdkin > fwdkinPtr;
typedef boost::shared_ptr< ::al5d_arm::fwdkin const> fwdkinConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::al5d_arm::fwdkin_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::al5d_arm::fwdkin_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace al5d_arm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'al5d_arm': ['/home/joseph/catkin_ws/src/al5d_arm/msg'], 'std_msgs': ['/opt/ros/groovy/share/std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::al5d_arm::fwdkin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::al5d_arm::fwdkin_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::al5d_arm::fwdkin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::al5d_arm::fwdkin_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::al5d_arm::fwdkin_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::al5d_arm::fwdkin_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::al5d_arm::fwdkin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b211c9f75d79ac5c8fd4c47719f57bb7";
  }

  static const char* value(const ::al5d_arm::fwdkin_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb211c9f75d79ac5cULL;
  static const uint64_t static_value2 = 0x8fd4c47719f57bb7ULL;
};

template<class ContainerAllocator>
struct DataType< ::al5d_arm::fwdkin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "al5d_arm/fwdkin";
  }

  static const char* value(const ::al5d_arm::fwdkin_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::al5d_arm::fwdkin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#forwardkin al5d arm\n\
\n\
float32 base_angle\n\
float32 shoulder_angle\n\
float32 elbow_angle\n\
float32 wrist_angle\n\
float32 gripper_percent\n\
\n\
";
  }

  static const char* value(const ::al5d_arm::fwdkin_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::al5d_arm::fwdkin_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base_angle);
      stream.next(m.shoulder_angle);
      stream.next(m.elbow_angle);
      stream.next(m.wrist_angle);
      stream.next(m.gripper_percent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct fwdkin_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::al5d_arm::fwdkin_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::al5d_arm::fwdkin_<ContainerAllocator>& v)
  {
    s << indent << "base_angle: ";
    Printer<float>::stream(s, indent + "  ", v.base_angle);
    s << indent << "shoulder_angle: ";
    Printer<float>::stream(s, indent + "  ", v.shoulder_angle);
    s << indent << "elbow_angle: ";
    Printer<float>::stream(s, indent + "  ", v.elbow_angle);
    s << indent << "wrist_angle: ";
    Printer<float>::stream(s, indent + "  ", v.wrist_angle);
    s << indent << "gripper_percent: ";
    Printer<float>::stream(s, indent + "  ", v.gripper_percent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AL5D_ARM_MESSAGE_FWDKIN_H