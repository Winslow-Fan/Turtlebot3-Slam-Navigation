// Generated by gencpp from file com2009_msgs/CameraSweepActionGoal.msg
// DO NOT EDIT!


#ifndef COM2009_MSGS_MESSAGE_CAMERASWEEPACTIONGOAL_H
#define COM2009_MSGS_MESSAGE_CAMERASWEEPACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <com2009_msgs/CameraSweepGoal.h>

namespace com2009_msgs
{
template <class ContainerAllocator>
struct CameraSweepActionGoal_
{
  typedef CameraSweepActionGoal_<ContainerAllocator> Type;

  CameraSweepActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  CameraSweepActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::com2009_msgs::CameraSweepGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CameraSweepActionGoal_

typedef ::com2009_msgs::CameraSweepActionGoal_<std::allocator<void> > CameraSweepActionGoal;

typedef boost::shared_ptr< ::com2009_msgs::CameraSweepActionGoal > CameraSweepActionGoalPtr;
typedef boost::shared_ptr< ::com2009_msgs::CameraSweepActionGoal const> CameraSweepActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator1> & lhs, const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator1> & lhs, const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace com2009_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ef3b8decdb55122270688d4536b5eab";
  }

  static const char* value(const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ef3b8decdb55122ULL;
  static const uint64_t static_value2 = 0x270688d4536b5eabULL;
};

template<class ContainerAllocator>
struct DataType< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "com2009_msgs/CameraSweepActionGoal";
  }

  static const char* value(const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"CameraSweepGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: com2009_msgs/CameraSweepGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"float32 sweep_angle    # the angular sweep over which to capture images (degrees)\n"
"int32 image_count      # the number of images to capture during the sweep\n"
;
  }

  static const char* value(const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraSweepActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::com2009_msgs::CameraSweepActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COM2009_MSGS_MESSAGE_CAMERASWEEPACTIONGOAL_H
