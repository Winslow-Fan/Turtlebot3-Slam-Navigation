; Auto-generated. Do not edit!


(cl:in-package com2009_msgs-srv)


;//! \htmlinclude SetBool-request.msg.html

(cl:defclass <SetBool-request> (roslisp-msg-protocol:ros-message)
  ((request_signal
    :reader request_signal
    :initarg :request_signal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetBool-request (<SetBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<SetBool-request> is deprecated: use com2009_msgs-srv:SetBool-request instead.")))

(cl:ensure-generic-function 'request_signal-val :lambda-list '(m))
(cl:defmethod request_signal-val ((m <SetBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:request_signal-val is deprecated.  Use com2009_msgs-srv:request_signal instead.")
  (request_signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBool-request>) ostream)
  "Serializes a message object of type '<SetBool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request_signal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBool-request>) istream)
  "Deserializes a message object of type '<SetBool-request>"
    (cl:setf (cl:slot-value msg 'request_signal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBool-request>)))
  "Returns string type for a service object of type '<SetBool-request>"
  "com2009_msgs/SetBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool-request)))
  "Returns string type for a service object of type 'SetBool-request"
  "com2009_msgs/SetBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBool-request>)))
  "Returns md5sum for a message object of type '<SetBool-request>"
  "809e515273297bb2c71988526658bce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBool-request)))
  "Returns md5sum for a message object of type 'SetBool-request"
  "809e515273297bb2c71988526658bce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBool-request>)))
  "Returns full string definition for message of type '<SetBool-request>"
  (cl:format cl:nil "bool request_signal       # A boolean signal to trigger something~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBool-request)))
  "Returns full string definition for message of type 'SetBool-request"
  (cl:format cl:nil "bool request_signal       # A boolean signal to trigger something~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBool-request
    (cl:cons ':request_signal (request_signal msg))
))
;//! \htmlinclude SetBool-response.msg.html

(cl:defclass <SetBool-response> (roslisp-msg-protocol:ros-message)
  ((response_signal
    :reader response_signal
    :initarg :response_signal
    :type cl:boolean
    :initform cl:nil)
   (response_message
    :reader response_message
    :initarg :response_message
    :type cl:string
    :initform ""))
)

(cl:defclass SetBool-response (<SetBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-srv:<SetBool-response> is deprecated: use com2009_msgs-srv:SetBool-response instead.")))

(cl:ensure-generic-function 'response_signal-val :lambda-list '(m))
(cl:defmethod response_signal-val ((m <SetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:response_signal-val is deprecated.  Use com2009_msgs-srv:response_signal instead.")
  (response_signal m))

(cl:ensure-generic-function 'response_message-val :lambda-list '(m))
(cl:defmethod response_message-val ((m <SetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-srv:response_message-val is deprecated.  Use com2009_msgs-srv:response_message instead.")
  (response_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBool-response>) ostream)
  "Serializes a message object of type '<SetBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response_signal) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBool-response>) istream)
  "Deserializes a message object of type '<SetBool-response>"
    (cl:setf (cl:slot-value msg 'response_signal) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBool-response>)))
  "Returns string type for a service object of type '<SetBool-response>"
  "com2009_msgs/SetBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool-response)))
  "Returns string type for a service object of type 'SetBool-response"
  "com2009_msgs/SetBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBool-response>)))
  "Returns md5sum for a message object of type '<SetBool-response>"
  "809e515273297bb2c71988526658bce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBool-response)))
  "Returns md5sum for a message object of type 'SetBool-response"
  "809e515273297bb2c71988526658bce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBool-response>)))
  "Returns full string definition for message of type '<SetBool-response>"
  (cl:format cl:nil "bool response_signal      # A boolean response to indicate that the action has been performed~%string response_message   # A message to provide further information to the service caller~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBool-response)))
  "Returns full string definition for message of type 'SetBool-response"
  (cl:format cl:nil "bool response_signal      # A boolean response to indicate that the action has been performed~%string response_message   # A message to provide further information to the service caller~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBool-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'response_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBool-response
    (cl:cons ':response_signal (response_signal msg))
    (cl:cons ':response_message (response_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBool)))
  'SetBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBool)))
  'SetBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool)))
  "Returns string type for a service object of type '<SetBool>"
  "com2009_msgs/SetBool")