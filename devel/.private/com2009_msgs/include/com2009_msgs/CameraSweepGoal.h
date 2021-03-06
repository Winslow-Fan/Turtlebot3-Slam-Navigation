// Generated by gencpp from file com2009_msgs/CameraSweepGoal.msg
// DO NOT EDIT!


#ifndef COM2009_MSGS_MESSAGE_CAMERASWEEPGOAL_H
#define COM2009_MSGS_MESSAGE_CAMERASWEEPGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace com2009_msgs
{
template <class ContainerAllocator>
struct CameraSweepGoal_
{
  typedef CameraSweepGoal_<ContainerAllocator> Type;

  CameraSweepGoal_()
    : sweep_angle(0.0)
    , image_count(0)  {
    }
  CameraSweepGoal_(const ContainerAllocator& _alloc)
    : sweep_angle(0.0)
    , image_count(0)  {
  (void)_alloc;
    }



   typedef float _sweep_angle_type;
  _sweep_angle_type sweep_angle;

   typedef int32_t _image_count_type;
  _image_count_type image_count;





  typedef boost::shared_ptr< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CameraSweepGoal_

typedef ::com2009_msgs::CameraSweepGoal_<std::allocator<void> > CameraSweepGoal;

typedef boost::shared_ptr< ::com2009_msgs::CameraSweepGoal > CameraSweepGoalPtr;
typedef boost::shared_ptr< ::com2009_msgs::CameraSweepGoal const> CameraSweepGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator1> & lhs, const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator2> & rhs)
{
  return lhs.sweep_angle == rhs.sweep_angle &&
    lhs.image_count == rhs.image_count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator1> & lhs, const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace com2009_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2278ec999c3591670076a420ec95a89";
  }

  static const char* value(const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2278ec999c35916ULL;
  static const uint64_t static_value2 = 0x70076a420ec95a89ULL;
};

template<class ContainerAllocator>
struct DataType< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "com2009_msgs/CameraSweepGoal";
  }

  static const char* value(const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"float32 sweep_angle    # the angular sweep over which to capture images (degrees)\n"
"int32 image_count      # the number of images to capture during the sweep\n"
;
  }

  static const char* value(const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sweep_angle);
      stream.next(m.image_count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraSweepGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::com2009_msgs::CameraSweepGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::com2009_msgs::CameraSweepGoal_<ContainerAllocator>& v)
  {
    s << indent << "sweep_angle: ";
    Printer<float>::stream(s, indent + "  ", v.sweep_angle);
    s << indent << "image_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.image_count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COM2009_MSGS_MESSAGE_CAMERASWEEPGOAL_H
