; Auto-generated. Do not edit!


(cl:in-package com2009_msgs-msg)


;//! \htmlinclude SearchResult.msg.html

(cl:defclass <SearchResult> (roslisp-msg-protocol:ros-message)
  ((total_distance_travelled
    :reader total_distance_travelled
    :initarg :total_distance_travelled
    :type cl:float
    :initform 0.0)
   (closest_object_distance
    :reader closest_object_distance
    :initarg :closest_object_distance
    :type cl:float
    :initform 0.0)
   (closest_object_angle
    :reader closest_object_angle
    :initarg :closest_object_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SearchResult (<SearchResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com2009_msgs-msg:<SearchResult> is deprecated: use com2009_msgs-msg:SearchResult instead.")))

(cl:ensure-generic-function 'total_distance_travelled-val :lambda-list '(m))
(cl:defmethod total_distance_travelled-val ((m <SearchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-msg:total_distance_travelled-val is deprecated.  Use com2009_msgs-msg:total_distance_travelled instead.")
  (total_distance_travelled m))

(cl:ensure-generic-function 'closest_object_distance-val :lambda-list '(m))
(cl:defmethod closest_object_distance-val ((m <SearchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-msg:closest_object_distance-val is deprecated.  Use com2009_msgs-msg:closest_object_distance instead.")
  (closest_object_distance m))

(cl:ensure-generic-function 'closest_object_angle-val :lambda-list '(m))
(cl:defmethod closest_object_angle-val ((m <SearchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com2009_msgs-msg:closest_object_angle-val is deprecated.  Use com2009_msgs-msg:closest_object_angle instead.")
  (closest_object_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchResult>) ostream)
  "Serializes a message object of type '<SearchResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_distance_travelled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closest_object_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closest_object_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchResult>) istream)
  "Deserializes a message object of type '<SearchResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_distance_travelled) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_object_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_object_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchResult>)))
  "Returns string type for a message object of type '<SearchResult>"
  "com2009_msgs/SearchResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchResult)))
  "Returns string type for a message object of type 'SearchResult"
  "com2009_msgs/SearchResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchResult>)))
  "Returns md5sum for a message object of type '<SearchResult>"
  "d70c4de9b794fcaee59b27f3888dd125")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchResult)))
  "Returns md5sum for a message object of type 'SearchResult"
  "d70c4de9b794fcaee59b27f3888dd125")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchResult>)))
  "Returns full string definition for message of type '<SearchResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%float32 total_distance_travelled   # Total distance travelled during the action (meters)~%float32 closest_object_distance    # LaserScan distance to the closest detected obstacle (meters) ~%float32 closest_object_angle       # The LaserScan angle of the closest detected obstacle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchResult)))
  "Returns full string definition for message of type 'SearchResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%float32 total_distance_travelled   # Total distance travelled during the action (meters)~%float32 closest_object_distance    # LaserScan distance to the closest detected obstacle (meters) ~%float32 closest_object_angle       # The LaserScan angle of the closest detected obstacle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchResult>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchResult
    (cl:cons ':total_distance_travelled (total_distance_travelled msg))
    (cl:cons ':closest_object_distance (closest_object_distance msg))
    (cl:cons ':closest_object_angle (closest_object_angle msg))
))
