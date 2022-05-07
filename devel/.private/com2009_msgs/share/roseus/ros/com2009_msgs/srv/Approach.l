;; Auto-generated. Do not edit!


(when (boundp 'com2009_msgs::Approach)
  (if (not (find-package "COM2009_MSGS"))
    (make-package "COM2009_MSGS"))
  (shadow 'Approach (find-package "COM2009_MSGS")))
(unless (find-package "COM2009_MSGS::APPROACH")
  (make-package "COM2009_MSGS::APPROACH"))
(unless (find-package "COM2009_MSGS::APPROACHREQUEST")
  (make-package "COM2009_MSGS::APPROACHREQUEST"))
(unless (find-package "COM2009_MSGS::APPROACHRESPONSE")
  (make-package "COM2009_MSGS::APPROACHRESPONSE"))

(in-package "ROS")





(defclass com2009_msgs::ApproachRequest
  :super ros::object
  :slots (_approach_distance _approach_velocity ))

(defmethod com2009_msgs::ApproachRequest
  (:init
   (&key
    ((:approach_distance __approach_distance) 0.0)
    ((:approach_velocity __approach_velocity) 0.0)
    )
   (send-super :init)
   (setq _approach_distance (float __approach_distance))
   (setq _approach_velocity (float __approach_velocity))
   self)
  (:approach_distance
   (&optional __approach_distance)
   (if __approach_distance (setq _approach_distance __approach_distance)) _approach_distance)
  (:approach_velocity
   (&optional __approach_velocity)
   (if __approach_velocity (setq _approach_velocity __approach_velocity)) _approach_velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _approach_distance
    4
    ;; float64 _approach_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _approach_distance
       (sys::poke _approach_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _approach_velocity
       (sys::poke _approach_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _approach_distance
     (setq _approach_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _approach_velocity
     (setq _approach_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass com2009_msgs::ApproachResponse
  :super ros::object
  :slots (_response_message ))

(defmethod com2009_msgs::ApproachResponse
  (:init
   (&key
    ((:response_message __response_message) "")
    )
   (send-super :init)
   (setq _response_message (string __response_message))
   self)
  (:response_message
   (&optional __response_message)
   (if __response_message (setq _response_message __response_message)) _response_message)
  (:serialization-length
   ()
   (+
    ;; string _response_message
    4 (length _response_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response_message
       (write-long (length _response_message) s) (princ _response_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass com2009_msgs::Approach
  :super ros::object
  :slots ())

(setf (get com2009_msgs::Approach :md5sum-) "9969ab457f53a37a2d75e40a76a1f887")
(setf (get com2009_msgs::Approach :datatype-) "com2009_msgs/Approach")
(setf (get com2009_msgs::Approach :request) com2009_msgs::ApproachRequest)
(setf (get com2009_msgs::Approach :response) com2009_msgs::ApproachResponse)

(defmethod com2009_msgs::ApproachRequest
  (:response () (instance com2009_msgs::ApproachResponse :init)))

(setf (get com2009_msgs::ApproachRequest :md5sum-) "9969ab457f53a37a2d75e40a76a1f887")
(setf (get com2009_msgs::ApproachRequest :datatype-) "com2009_msgs/ApproachRequest")
(setf (get com2009_msgs::ApproachRequest :definition-)
      "float32 approach_distance  # Distance to approach an object (m)
float64 approach_velocity  # Linear speed to approach (m/s)
---
string response_message

")

(setf (get com2009_msgs::ApproachResponse :md5sum-) "9969ab457f53a37a2d75e40a76a1f887")
(setf (get com2009_msgs::ApproachResponse :datatype-) "com2009_msgs/ApproachResponse")
(setf (get com2009_msgs::ApproachResponse :definition-)
      "float32 approach_distance  # Distance to approach an object (m)
float64 approach_velocity  # Linear speed to approach (m/s)
---
string response_message

")



(provide :com2009_msgs/Approach "9969ab457f53a37a2d75e40a76a1f887")


