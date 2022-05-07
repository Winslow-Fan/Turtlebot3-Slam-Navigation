; Auto-generated. Do not edit!


(cl:in-package com2009_msgs-srv)


;//! \htmlinclude TimedMovement-request.msg.html

(cl:defclass <TimedMovement-request> (roslisp-msg-protocol:ros-message)
  ((movement_request
    :reader movement_request
    :initarg :movement_request
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass TimedMovement-request (<TimedMovement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedMovement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedMovement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<TimedMovement-request> is deprecated: use com2009_msgs-srv:TimedMovement-request instead.")))

(cl:ensure-generic-function 'movement_request-val :lambda-list '(m))
(cl:defmethod movement_request-val ((m <TimedMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:movement_request-val is deprecated.  Use com2009_msgs-srv:movement_request instead.")
  (movement_request m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TimedMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:duration-val is deprecated.  Use com2009_msgs-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedMovement-request>) ostream)
  "Serializes a message object of type '<TimedMovement-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'movement_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'movement_request))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedMovement-request>) istream)
  "Deserializes a message object of type '<TimedMovement-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'movement_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'movement_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedMovement-request>)))
  "Returns string type for a service object of type '<TimedMovement-request>"
  "com2009_msgs/TimedMovementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMovement-request)))
  "Returns string type for a service object of type 'TimedMovement-request"
  "com2009_msgs/TimedMovementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedMovement-request>)))
  "Returns md5sum for a message object of type '<TimedMovement-request>"
  "01da3949d1975f89601d90342172dc85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedMovement-request)))
  "Returns md5sum for a message object of type 'TimedMovement-request"
  "01da3949d1975f89601d90342172dc85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedMovement-request>)))
  "Returns full string definition for message of type '<TimedMovement-request>"
  (cl:format cl:nil "string movement_request  # the type of movement to perform~%int32 duration           # the time (in seconds) to perform the movement for~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedMovement-request)))
  "Returns full string definition for message of type 'TimedMovement-request"
  (cl:format cl:nil "string movement_request  # the type of movement to perform~%int32 duration           # the time (in seconds) to perform the movement for~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedMovement-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'movement_request))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedMovement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedMovement-request
    (cl:cons ':movement_request (movement_request msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude TimedMovement-response.msg.html

(cl:defclass <TimedMovement-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TimedMovement-response (<TimedMovement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedMovement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedMovement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<TimedMovement-response> is deprecated: use com2009_msgs-srv:TimedMovement-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TimedMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:success-val is deprecated.  Use com2009_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedMovement-response>) ostream)
  "Serializes a message object of type '<TimedMovement-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedMovement-response>) istream)
  "Deserializes a message object of type '<TimedMovement-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedMovement-response>)))
  "Returns string type for a service object of type '<TimedMovement-response>"
  "com2009_msgs/TimedMovementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMovement-response)))
  "Returns string type for a service object of type 'TimedMovement-response"
  "com2009_msgs/TimedMovementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedMovement-response>)))
  "Returns md5sum for a message object of type '<TimedMovement-response>"
  "01da3949d1975f89601d90342172dc85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedMovement-response)))
  "Returns md5sum for a message object of type 'TimedMovement-response"
  "01da3949d1975f89601d90342172dc85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedMovement-response>)))
  "Returns full string definition for message of type '<TimedMovement-response>"
  (cl:format cl:nil "bool success             # a boolean response to indicate that the service has completed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedMovement-response)))
  "Returns full string definition for message of type 'TimedMovement-response"
  (cl:format cl:nil "bool success             # a boolean response to indicate that the service has completed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedMovement-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedMovement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedMovement-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimedMovement)))
  'TimedMovement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimedMovement)))
  'TimedMovement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedMovement)))
  "Returns string type for a service object of type '<TimedMovement>"
  "com2009_msgs/TimedMovement")