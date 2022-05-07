; Auto-generated. Do not edit!


(cl:in-package com2009_msgs-msg)


;//! \htmlinclude NumpyInt32Array.msg.html

(cl:defclass <NumpyInt32Array> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass NumpyInt32Array (<NumpyInt32Array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NumpyInt32Array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NumpyInt32Array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-msg:<NumpyInt32Array> is deprecated: use com2009_msgs-msg:NumpyInt32Array instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <NumpyInt32Array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-msg:data-val is deprecated.  Use com2009_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NumpyInt32Array>) ostream)
  "Serializes a message object of type '<NumpyInt32Array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NumpyInt32Array>) istream)
  "Deserializes a message object of type '<NumpyInt32Array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NumpyInt32Array>)))
  "Returns string type for a message object of type '<NumpyInt32Array>"
  "com2009_msgs/NumpyInt32Array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NumpyInt32Array)))
  "Returns string type for a message object of type 'NumpyInt32Array"
  "com2009_msgs/NumpyInt32Array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NumpyInt32Array>)))
  "Returns md5sum for a message object of type '<NumpyInt32Array>"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NumpyInt32Array)))
  "Returns md5sum for a message object of type 'NumpyInt32Array"
  "563b27884d008b0d2adff54dc1f9e4f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NumpyInt32Array>)))
  "Returns full string definition for message of type '<NumpyInt32Array>"
  (cl:format cl:nil "int32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NumpyInt32Array)))
  "Returns full string definition for message of type 'NumpyInt32Array"
  (cl:format cl:nil "int32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NumpyInt32Array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NumpyInt32Array>))
  "Converts a ROS message object to a list"
  (cl:list 'NumpyInt32Array
    (cl:cons ':data (data msg))
))
