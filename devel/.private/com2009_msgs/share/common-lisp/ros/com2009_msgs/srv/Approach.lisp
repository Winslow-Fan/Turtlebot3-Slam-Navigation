; Auto-generated. Do not edit!


(cl:in-package com2009_msgs-srv)


;//! \htmlinclude Approach-request.msg.html

(cl:defclass <Approach-request> (roslisp-msg-protocol:ros-message)
  ((approach_distance
    :reader approach_distance
    :initarg :approach_distance
    :type cl:float
    :initform 0.0)
   (approach_velocity
    :reader approach_velocity
    :initarg :approach_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass Approach-request (<Approach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<Approach-request> is deprecated: use com2009_msgs-srv:Approach-request instead.")))

(cl:ensure-generic-function 'approach_distance-val :lambda-list '(m))
(cl:defmethod approach_distance-val ((m <Approach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:approach_distance-val is deprecated.  Use com2009_msgs-srv:approach_distance instead.")
  (approach_distance m))

(cl:ensure-generic-function 'approach_velocity-val :lambda-list '(m))
(cl:defmethod approach_velocity-val ((m <Approach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:approach_velocity-val is deprecated.  Use com2009_msgs-srv:approach_velocity instead.")
  (approach_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approach-request>) ostream)
  "Serializes a message object of type '<Approach-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'approach_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'approach_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approach-request>) istream)
  "Deserializes a message object of type '<Approach-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'approach_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'approach_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approach-request>)))
  "Returns string type for a service object of type '<Approach-request>"
  "com2009_msgs/ApproachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach-request)))
  "Returns string type for a service object of type 'Approach-request"
  "com2009_msgs/ApproachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approach-request>)))
  "Returns md5sum for a message object of type '<Approach-request>"
  "9969ab457f53a37a2d75e40a76a1f887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approach-request)))
  "Returns md5sum for a message object of type 'Approach-request"
  "9969ab457f53a37a2d75e40a76a1f887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approach-request>)))
  "Returns full string definition for message of type '<Approach-request>"
  (cl:format cl:nil "float32 approach_distance  # Distance to approach an object (m)~%float64 approach_velocity  # Linear speed to approach (m/s)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approach-request)))
  "Returns full string definition for message of type 'Approach-request"
  (cl:format cl:nil "float32 approach_distance  # Distance to approach an object (m)~%float64 approach_velocity  # Linear speed to approach (m/s)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approach-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Approach-request
    (cl:cons ':approach_distance (approach_distance msg))
    (cl:cons ':approach_velocity (approach_velocity msg))
))
;//! \htmlinclude Approach-response.msg.html

(cl:defclass <Approach-response> (roslisp-msg-protocol:ros-message)
  ((response_message
    :reader response_message
    :initarg :response_message
    :type cl:string
    :initform ""))
)

(cl:defclass Approach-response (<Approach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<Approach-response> is deprecated: use com2009_msgs-srv:Approach-response instead.")))

(cl:ensure-generic-function 'response_message-val :lambda-list '(m))
(cl:defmethod response_message-val ((m <Approach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:response_message-val is deprecated.  Use com2009_msgs-srv:response_message instead.")
  (response_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approach-response>) ostream)
  "Serializes a message object of type '<Approach-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approach-response>) istream)
  "Deserializes a message object of type '<Approach-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approach-response>)))
  "Returns string type for a service object of type '<Approach-response>"
  "com2009_msgs/ApproachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach-response)))
  "Returns string type for a service object of type 'Approach-response"
  "com2009_msgs/ApproachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approach-response>)))
  "Returns md5sum for a message object of type '<Approach-response>"
  "9969ab457f53a37a2d75e40a76a1f887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approach-response)))
  "Returns md5sum for a message object of type 'Approach-response"
  "9969ab457f53a37a2d75e40a76a1f887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approach-response>)))
  "Returns full string definition for message of type '<Approach-response>"
  (cl:format cl:nil "string response_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approach-response)))
  "Returns full string definition for message of type 'Approach-response"
  (cl:format cl:nil "string response_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approach-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Approach-response
    (cl:cons ':response_message (response_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Approach)))
  'Approach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Approach)))
  'Approach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach)))
  "Returns string type for a service object of type '<Approach>"
  "com2009_msgs/Approach")