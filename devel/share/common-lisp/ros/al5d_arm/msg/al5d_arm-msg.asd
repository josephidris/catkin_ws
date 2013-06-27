
(cl:in-package :asdf)

(defsystem "al5d_arm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "invkin" :depends-on ("_package_invkin"))
    (:file "_package_invkin" :depends-on ("_package"))
    (:file "fwdkin" :depends-on ("_package_fwdkin"))
    (:file "_package_fwdkin" :depends-on ("_package"))
  ))