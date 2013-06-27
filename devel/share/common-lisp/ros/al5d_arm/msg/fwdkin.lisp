; Auto-generated. Do not edit!


(cl:in-package al5d_arm-msg)


;//! \htmlinclude fwdkin.msg.html

(cl:defclass <fwdkin> (roslisp-msg-protocol:ros-message)
  ((base_angle
    :reader base_angle
    :initarg :base_angle
    :type cl:float
    :initform 0.0)
   (shoulder_angle
    :reader shoulder_angle
    :initarg :shoulder_angle
    :type cl:float
    :initform 0.0)
   (elbow_angle
    :reader elbow_angle
    :initarg :elbow_angle
    :type cl:float
    :initform 0.0)
   (wrist_angle
    :reader wrist_angle
    :initarg :wrist_angle
    :type cl:float
    :initform 0.0)
   (gripper_percent
    :reader gripper_percent
    :initarg :gripper_percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass fwdkin (<fwdkin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fwdkin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fwdkin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name al5d_arm-msg:<fwdkin> is deprecated: use al5d_arm-msg:fwdkin instead.")))

(cl:ensure-generic-function 'base_angle-val :lambda-list '(m))
(cl:defmethod base_angle-val ((m <fwdkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:base_angle-val is deprecated.  Use al5d_arm-msg:base_angle instead.")
  (base_angle m))

(cl:ensure-generic-function 'shoulder_angle-val :lambda-list '(m))
(cl:defmethod shoulder_angle-val ((m <fwdkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:shoulder_angle-val is deprecated.  Use al5d_arm-msg:shoulder_angle instead.")
  (shoulder_angle m))

(cl:ensure-generic-function 'elbow_angle-val :lambda-list '(m))
(cl:defmethod elbow_angle-val ((m <fwdkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:elbow_angle-val is deprecated.  Use al5d_arm-msg:elbow_angle instead.")
  (elbow_angle m))

(cl:ensure-generic-function 'wrist_angle-val :lambda-list '(m))
(cl:defmethod wrist_angle-val ((m <fwdkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:wrist_angle-val is deprecated.  Use al5d_arm-msg:wrist_angle instead.")
  (wrist_angle m))

(cl:ensure-generic-function 'gripper_percent-val :lambda-list '(m))
(cl:defmethod gripper_percent-val ((m <fwdkin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader al5d_arm-msg:gripper_percent-val is deprecated.  Use al5d_arm-msg:gripper_percent instead.")
  (gripper_percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fwdkin>) ostream)
  "Serializes a message object of type '<fwdkin>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'base_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shoulder_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elbow_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wrist_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gripper_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fwdkin>) istream)
  "Deserializes a message object of type '<fwdkin>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shoulder_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elbow_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wrist_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fwdkin>)))
  "Returns string type for a message object of type '<fwdkin>"
  "al5d_arm/fwdkin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fwdkin)))
  "Returns string type for a message object of type 'fwdkin"
  "al5d_arm/fwdkin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fwdkin>)))
  "Returns md5sum for a message object of type '<fwdkin>"
  "b211c9f75d79ac5c8fd4c47719f57bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fwdkin)))
  "Returns md5sum for a message object of type 'fwdkin"
  "b211c9f75d79ac5c8fd4c47719f57bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fwdkin>)))
  "Returns full string definition for message of type '<fwdkin>"
  (cl:format cl:nil "#forwardkin al5d arm~%~%float32 base_angle~%float32 shoulder_angle~%float32 elbow_angle~%float32 wrist_angle~%float32 gripper_percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fwdkin)))
  "Returns full string definition for message of type 'fwdkin"
  (cl:format cl:nil "#forwardkin al5d arm~%~%float32 base_angle~%float32 shoulder_angle~%float32 elbow_angle~%float32 wrist_angle~%float32 gripper_percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fwdkin>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fwdkin>))
  "Converts a ROS message object to a list"
  (cl:list 'fwdkin
    (cl:cons ':base_angle (base_angle msg))
    (cl:cons ':shoulder_angle (shoulder_angle msg))
    (cl:cons ':elbow_angle (elbow_angle msg))
    (cl:cons ':wrist_angle (wrist_angle msg))
    (cl:cons ':gripper_percent (gripper_percent msg))
))
