; Auto-generated. Do not edit!


(cl:in-package teleop_twist_keyboard_cpp-msg)


;//! \htmlinclude num.msg.html

(cl:defclass <num> (roslisp-msg-protocol:ros-message)
  ((cell
    :reader cell
    :initarg :cell
    :type cl:fixnum
    :initform 0))
)

(cl:defclass num (<num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_twist_keyboard_cpp-msg:<num> is deprecated: use teleop_twist_keyboard_cpp-msg:num instead.")))

(cl:ensure-generic-function 'cell-val :lambda-list '(m))
(cl:defmethod cell-val ((m <num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_twist_keyboard_cpp-msg:cell-val is deprecated.  Use teleop_twist_keyboard_cpp-msg:cell instead.")
  (cell m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num>) ostream)
  "Serializes a message object of type '<num>"
  (cl:let* ((signed (cl:slot-value msg 'cell)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num>) istream)
  "Deserializes a message object of type '<num>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num>)))
  "Returns string type for a message object of type '<num>"
  "teleop_twist_keyboard_cpp/num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num)))
  "Returns string type for a message object of type 'num"
  "teleop_twist_keyboard_cpp/num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num>)))
  "Returns md5sum for a message object of type '<num>"
  "289056e7a02f898217ead636fc3f6d34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num)))
  "Returns md5sum for a message object of type 'num"
  "289056e7a02f898217ead636fc3f6d34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num>)))
  "Returns full string definition for message of type '<num>"
  (cl:format cl:nil "int8 cell~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num)))
  "Returns full string definition for message of type 'num"
  (cl:format cl:nil "int8 cell~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num>))
  "Converts a ROS message object to a list"
  (cl:list 'num
    (cl:cons ':cell (cell msg))
))
