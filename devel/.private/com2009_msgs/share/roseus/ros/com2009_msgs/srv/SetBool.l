;; Auto-generated. Do not edit!


(when (boundp 'com2009_msgs::SetBool)
  (if (not (find-package "COM2009_MSGS"))
    (make-package "COM2009_MSGS"))
  (shadow 'SetBool (find-package "COM2009_MSGS")))
(unless (find-package "COM2009_MSGS::SETBOOL")
  (make-package "COM2009_MSGS::SETBOOL"))
(unless (find-package "COM2009_MSGS::SETBOOLREQUEST")
  (make-package "COM2009_MSGS::SETBOOLREQUEST"))
(unless (find-package "COM2009_MSGS::SETBOOLRESPONSE")
  (make-package "COM2009_MSGS::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass com2009_msgs::SetBoolRequest
  :super ros::object
  :slots (_request_signal ))

(defmethod com2009_msgs::SetBoolRequest
  (:init
   (&key
    ((:request_signal __request_signal) nil)
    )
   (send-super :init)
   (setq _request_signal __request_signal)
   self)
  (:request_signal
   (&optional (__request_signal :null))
   (if (not (eq __request_signal :null)) (setq _request_signal __request_signal)) _request_signal)
  (:serialization-length
   ()
   (+
    ;; bool _request_signal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _request_signal
       (if _request_signal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _request_signal
     (setq _request_signal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass com2009_msgs::SetBoolResponse
  :super ros::object
  :slots (_response_signal _response_message ))

(defmethod com2009_msgs::SetBoolResponse
  (:init
   (&key
    ((:response_signal __response_signal) nil)
    ((:response_message __response_message) "")
    )
   (send-super :init)
   (setq _response_signal __response_signal)
   (setq _response_message (string __response_message))
   self)
  (:response_signal
   (&optional (__response_signal :null))
   (if (not (eq __response_signal :null)) (setq _response_signal __response_signal)) _response_signal)
  (:response_message
   (&optional __response_message)
   (if __response_message (setq _response_message __response_message)) _response_message)
  (:serialization-length
   ()
   (+
    ;; bool _response_signal
    1
    ;; string _response_message
    4 (length _response_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response_signal
       (if _response_signal (write-byte -1 s) (write-byte 0 s))
     ;; string _response_message
       (write-long (length _response_message) s) (princ _response_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response_signal
     (setq _response_signal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _response_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass com2009_msgs::SetBool
  :super ros::object
  :slots ())

(setf (get com2009_msgs::SetBool :md5sum-) "809e515273297bb2c71988526658bce7")
(setf (get com2009_msgs::SetBool :datatype-) "com2009_msgs/SetBool")
(setf (get com2009_msgs::SetBool :request) com2009_msgs::SetBoolRequest)
(setf (get com2009_msgs::SetBool :response) com2009_msgs::SetBoolResponse)

(defmethod com2009_msgs::SetBoolRequest
  (:response () (instance com2009_msgs::SetBoolResponse :init)))

(setf (get com2009_msgs::SetBoolRequest :md5sum-) "809e515273297bb2c71988526658bce7")
(setf (get com2009_msgs::SetBoolRequest :datatype-) "com2009_msgs/SetBoolRequest")
(setf (get com2009_msgs::SetBoolRequest :definition-)
      "bool request_signal       # A boolean signal to trigger something
---
bool response_signal      # A boolean response to indicate that the action has been performed
string response_message   # A message to provide further information to the service caller

")

(setf (get com2009_msgs::SetBoolResponse :md5sum-) "809e515273297bb2c71988526658bce7")
(setf (get com2009_msgs::SetBoolResponse :datatype-) "com2009_msgs/SetBoolResponse")
(setf (get com2009_msgs::SetBoolResponse :definition-)
      "bool request_signal       # A boolean signal to trigger something
---
bool response_signal      # A boolean response to indicate that the action has been performed
string response_message   # A message to provide further information to the service caller

")



(provide :com2009_msgs/SetBool "809e515273297bb2c71988526658bce7")


