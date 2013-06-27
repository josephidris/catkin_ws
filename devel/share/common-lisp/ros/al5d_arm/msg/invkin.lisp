; Auto-generated. Do not edit!


(cl:in-package al5d_arm-msg)


;//! \htmlinclude invkin.msg.html

(cl:defclass <invkin> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (grip_angle
    :reader grip_angle
    :initarg :grip_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass invkin (<invkin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <invkin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'invkin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name al5d_arm-msg:<invkin> is deprecated: use al5d_arm-msg:invkin instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <invkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:x-val is deprecated.  Use al5d_arm-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <invkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:y-val is deprecated.  Use al5d_arm-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <invkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:z-val is deprecated.  Use al5d_arm-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'grip_angle-val :lambda-list '(m))
(cl:defmethod grip_angle-val ((m <invkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:grip_angle-val is deprecated.  Use al5d_arm-msg:grip_angle instead.")
  (grip_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <invkin>) ostream)
  "Serializes a message object of type '<invkin>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grip_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <invkin>) istream)
  "Deserializes a message object of type '<invkin>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grip_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<invkin>)))
  "Returns string type for a message object of type '<invkin>"
  "al5d_arm/invkin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'invkin)))
  "Returns string type for a message object of type 'invkin"
  "al5d_arm/invkin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<invkin>)))
  "Returns md5sum for a message object of type '<invkin>"
  "23c3ddbec420d3c96d407c67a170ed7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'invkin)))
  "Returns md5sum for a message object of type 'invkin"
  "23c3ddbec420d3c96d407c67a170ed7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<invkin>)))
  "Returns full string definition for message of type '<invkin>"
  (cl:format cl:nil "#inversekin al5d arm~%~%float32 x~%float32 y~%float32 z~%float32 grip_angle ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'invkin)))
  "Returns full string definition for message of type 'invkin"
  (cl:format cl:nil "#inversekin al5d arm~%~%float32 x~%float32 y~%float32 z~%float32 grip_angle ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <invkin>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <invkin>))
  "Converts a ROS message object to a list"
  (cl:list 'invkin
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':grip_angle (grip_angle msg))
))
