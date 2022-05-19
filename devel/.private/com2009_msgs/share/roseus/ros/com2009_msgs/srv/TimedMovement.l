;; Auto-generated. Do not edit!


(when (boundp 'com2009_msgs::TimedMovement)
  (if (not (find-package "COM2009_MSGS"))
    (make-package "COM2009_MSGS"))
  (shadow 'TimedMovement (find-package "COM2009_MSGS")))
(unless (find-package "COM2009_MSGS::TIMEDMOVEMENT")
  (make-package "COM2009_MSGS::TIMEDMOVEMENT"))
(unless (find-package "COM2009_MSGS::TIMEDMOVEMENTREQUEST")
  (make-package "COM2009_MSGS::TIMEDMOVEMENTREQUEST"))
(unless (find-package "COM2009_MSGS::TIMEDMOVEMENTRESPONSE")
  (make-package "COM2009_MSGS::TIMEDMOVEMENTRESPONSE"))

(in-package "ROS")





(defclass com2009_msgs::TimedMovementRequest
  :super ros::object
  :slots (_movement_request _duration ))

(defmethod com2009_msgs::TimedMovementRequest
  (:init
   (&key
    ((:movement_request __movement_request) "")
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _movement_request (string __movement_request))
   (setq _duration (round __duration))
   self)
  (:movement_request
   (&optional __movement_request)
   (if __movement_request (setq _movement_request __movement_request)) _movement_request)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _movement_request
    4 (length _movement_request)
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _movement_request
       (write-long (length _movement_request) s) (princ _movement_request s)
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _movement_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _movement_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass com2009_msgs::TimedMovementResponse
  :super ros::object
  :slots (_success ))

(defmethod com2009_msgs::TimedMovementResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass com2009_msgs::TimedMovement
  :super ros::object
  :slots ())

(setf (get com2009_msgs::TimedMovement :md5sum-) "01da3949d1975f89601d90342172dc85")
(setf (get com2009_msgs::TimedMovement :datatype-) "com2009_msgs/TimedMovement")
(setf (get com2009_msgs::TimedMovement :request) com2009_msgs::TimedMovementRequest)
(setf (get com2009_msgs::TimedMovement :response) com2009_msgs::TimedMovementResponse)

(defmethod com2009_msgs::TimedMovementRequest
  (:response () (instance com2009_msgs::TimedMovementResponse :init)))

(setf (get com2009_msgs::TimedMovementRequest :md5sum-) "01da3949d1975f89601d90342172dc85")
(setf (get com2009_msgs::TimedMovementRequest :datatype-) "com2009_msgs/TimedMovementRequest")
(setf (get com2009_msgs::TimedMovementRequest :definition-)
      "string movement_request  # the type of movement to perform
int32 duration           # the time (in seconds) to perform the movement for
---
bool success             # a boolean response to indicate that the service has completed

")

(setf (get com2009_msgs::TimedMovementResponse :md5sum-) "01da3949d1975f89601d90342172dc85")
(setf (get com2009_msgs::TimedMovementResponse :datatype-) "com2009_msgs/TimedMovementResponse")
(setf (get com2009_msgs::TimedMovementResponse :definition-)
      "string movement_request  # the type of movement to perform
int32 duration           # the time (in seconds) to perform the movement for
---
bool success             # a boolean response to indicate that the service has completed

")



(provide :com2009_msgs/TimedMovement "01da3949d1975f89601d90342172dc85")


