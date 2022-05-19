// Generated by gencpp from file com2009_msgs/SetBoolRequest.msg
// DO NOT EDIT!


#ifndef COM2009_MSGS_MESSAGE_SETBOOLREQUEST_H
#define COM2009_MSGS_MESSAGE_SETBOOLREQUEST_H


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
struct SetBoolRequest_
{
  typedef SetBoolRequest_<ContainerAllocator> Type;

  SetBoolRequest_()
    : request_signal(false)  {
    }
  SetBoolRequest_(const ContainerAllocator& _alloc)
    : request_signal(false)  {
  (void)_alloc;
    }



   typedef uint8_t _request_signal_type;
  _request_signal_type request_signal;





  typedef boost::shared_ptr< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetBoolRequest_

typedef ::com2009_msgs::SetBoolRequest_<std::allocator<void> > SetBoolRequest;

typedef boost::shared_ptr< ::com2009_msgs::SetBoolRequest > SetBoolRequestPtr;
typedef boost::shared_ptr< ::com2009_msgs::SetBoolRequest const> SetBoolRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::com2009_msgs::SetBoolRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::com2009_msgs::SetBoolRequest_<ContainerAllocator1> & lhs, const ::com2009_msgs::SetBoolRequest_<ContainerAllocator2> & rhs)
{
  return lhs.request_signal == rhs.request_signal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::com2009_msgs::SetBoolRequest_<ContainerAllocator1> & lhs, const ::com2009_msgs::SetBoolRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace com2009_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c14d11e782ee205fe33d007d480c988";
  }

  static const char* value(const ::com2009_msgs::SetBoolRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c14d11e782ee205ULL;
  static const uint64_t static_value2 = 0xfe33d007d480c988ULL;
};

template<class ContainerAllocator>
struct DataType< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "com2009_msgs/SetBoolRequest";
  }

  static const char* value(const ::com2009_msgs::SetBoolRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool request_signal       # A boolean signal to trigger something\n"
;
  }

  static const char* value(const ::com2009_msgs::SetBoolRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.request_signal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetBoolRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::com2009_msgs::SetBoolRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::com2009_msgs::SetBoolRequest_<ContainerAllocator>& v)
  {
    s << indent << "request_signal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.request_signal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COM2009_MSGS_MESSAGE_SETBOOLREQUEST_H
