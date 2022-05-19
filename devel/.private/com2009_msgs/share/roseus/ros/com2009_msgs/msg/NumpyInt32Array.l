;; Auto-generated. Do not edit!


(when (boundp 'com2009_msgs::NumpyInt32Array)
  (if (not (find-package "COM2009_MSGS"))
    (make-package "COM2009_MSGS"))
  (shadow 'NumpyInt32Array (find-package "COM2009_MSGS")))
(unless (find-package "COM2009_MSGS::NUMPYINT32ARRAY")
  (make-package "COM2009_MSGS::NUMPYINT32ARRAY"))

(in-package "ROS")
;;//! \htmlinclude NumpyInt32Array.msg.html


(defclass com2009_msgs::NumpyInt32Array
  :super ros::object
  :slots (_data ))

(defmethod com2009_msgs::NumpyInt32Array
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get com2009_msgs::NumpyInt32Array :md5sum-) "563b27884d008b0d2adff54dc1f9e4f5")
(setf (get com2009_msgs::NumpyInt32Array :datatype-) "com2009_msgs/NumpyInt32Array")
(setf (get com2009_msgs::NumpyInt32Array :definition-)
      "int32[] data
")



(provide :com2009_msgs/NumpyInt32Array "563b27884d008b0d2adff54dc1f9e4f5")


