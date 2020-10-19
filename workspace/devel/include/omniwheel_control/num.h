// Generated by gencpp from file omniwheel_control/num.msg
// DO NOT EDIT!


#ifndef OMNIWHEEL_CONTROL_MESSAGE_NUM_H
#define OMNIWHEEL_CONTROL_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace omniwheel_control
{
template <class ContainerAllocator>
struct num_
{
  typedef num_<ContainerAllocator> Type;

  num_()
    : cell(0)  {
    }
  num_(const ContainerAllocator& _alloc)
    : cell(0)  {
  (void)_alloc;
    }



   typedef int8_t _cell_type;
  _cell_type cell;





  typedef boost::shared_ptr< ::omniwheel_control::num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::omniwheel_control::num_<ContainerAllocator> const> ConstPtr;

}; // struct num_

typedef ::omniwheel_control::num_<std::allocator<void> > num;

typedef boost::shared_ptr< ::omniwheel_control::num > numPtr;
typedef boost::shared_ptr< ::omniwheel_control::num const> numConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::omniwheel_control::num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::omniwheel_control::num_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace omniwheel_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'omniwheel_control': ['/home/chenxin/workspace/omniwheeltest/workspace/src/omniwheel_control/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::omniwheel_control::num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::omniwheel_control::num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::omniwheel_control::num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::omniwheel_control::num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::omniwheel_control::num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::omniwheel_control::num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::omniwheel_control::num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "289056e7a02f898217ead636fc3f6d34";
  }

  static const char* value(const ::omniwheel_control::num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x289056e7a02f8982ULL;
  static const uint64_t static_value2 = 0x17ead636fc3f6d34ULL;
};

template<class ContainerAllocator>
struct DataType< ::omniwheel_control::num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "omniwheel_control/num";
  }

  static const char* value(const ::omniwheel_control::num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::omniwheel_control::num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cell\n\
";
  }

  static const char* value(const ::omniwheel_control::num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::omniwheel_control::num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cell);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::omniwheel_control::num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::omniwheel_control::num_<ContainerAllocator>& v)
  {
    s << indent << "cell: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cell);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OMNIWHEEL_CONTROL_MESSAGE_NUM_H