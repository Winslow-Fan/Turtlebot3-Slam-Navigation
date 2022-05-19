// Generated by gencpp from file com2009_msgs/ApproachRequest.msg
// DO NOT EDIT!


#ifndef COM2009_MSGS_MESSAGE_APPROACHREQUEST_H
#define COM2009_MSGS_MESSAGE_APPROACHREQUEST_H


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
struct ApproachRequest_
{
  typedef ApproachRequest_<ContainerAllocator> Type;

  ApproachRequest_()
    : approach_distance(0.0)
    , approach_velocity(0.0)  {
    }
  ApproachRequest_(const ContainerAllocator& _alloc)
    : approach_distance(0.0)
    , approach_velocity(0.0)  {
  (void)_alloc;
    }



   typedef float _approach_distance_type;
  _approach_distance_type approach_distance;

   typedef double _approach_velocity_type;
  _approach_velocity_type approach_velocity;





  typedef boost::shared_ptr< ::com2009_msgs::ApproachRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::com2009_msgs::ApproachRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ApproachRequest_

typedef ::com2009_msgs::ApproachRequest_<std::allocator<void> > ApproachRequest;

typedef boost::shared_ptr< ::com2009_msgs::ApproachRequest > ApproachRequestPtr;
typedef boost::shared_ptr< ::com2009_msgs::ApproachRequest const> ApproachRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::com2009_msgs::ApproachRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::com2009_msgs::ApproachRequest_<ContainerAllocator1> & lhs, const ::com2009_msgs::ApproachRequest_<ContainerAllocator2> & rhs)
{
  return lhs.approach_distance == rhs.approach_distance &&
    lhs.approach_velocity == rhs.approach_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::com2009_msgs::ApproachRequest_<ContainerAllocator1> & lhs, const ::com2009_msgs::ApproachRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace com2009_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::ApproachRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::ApproachRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::ApproachRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2f9f80d4d9d15d06a0678fe2155a4db";
  }

  static const char* value(const ::com2009_msgs::ApproachRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2f9f80d4d9d15d0ULL;
  static const uint64_t static_value2 = 0x6a0678fe2155a4dbULL;
};

template<class ContainerAllocator>
struct DataType< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "com2009_msgs/ApproachRequest";
  }

  static const char* value(const ::com2009_msgs::ApproachRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 approach_distance  # Distance to approach an object (m)\n"
"float64 approach_velocity  # Linear speed to approach (m/s)\n"
;
  }

  static const char* value(const ::com2009_msgs::ApproachRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.approach_distance);
      stream.next(m.approach_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ApproachRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::com2009_msgs::ApproachRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::com2009_msgs::ApproachRequest_<ContainerAllocator>& v)
  {
    s << indent << "approach_distance: ";
    Printer<float>::stream(s, indent + "  ", v.approach_distance);
    s << indent << "approach_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.approach_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COM2009_MSGS_MESSAGE_APPROACHREQUEST_H
