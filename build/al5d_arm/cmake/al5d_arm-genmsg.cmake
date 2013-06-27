# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "al5d_arm: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ial5d_arm:/home/joseph/catkin_ws/src/al5d_arm/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

#better way to handle this?
set (ALL_GEN_OUTPUT_FILES_cpp "")

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/fwdkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/al5d_arm
)
_generate_msg_cpp(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/invkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/al5d_arm
)

### Generating Services

### Generating Module File
_generate_module_cpp(al5d_arm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/al5d_arm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(al5d_arm_gencpp ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/fwdkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/al5d_arm
)
_generate_msg_lisp(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/invkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/al5d_arm
)

### Generating Services

### Generating Module File
_generate_module_lisp(al5d_arm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/al5d_arm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(al5d_arm_genlisp ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/fwdkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/al5d_arm
)
_generate_msg_py(al5d_arm
  /home/joseph/catkin_ws/src/al5d_arm/msg/invkin.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/al5d_arm
)

### Generating Services

### Generating Module File
_generate_module_py(al5d_arm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/al5d_arm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(al5d_arm_genpy ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)


debug_message(2 "al5d_arm: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/al5d_arm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(al5d_arm_gencpp std_msgs_gencpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/al5d_arm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(al5d_arm_genlisp std_msgs_genlisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/al5d_arm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/al5d_arm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(al5d_arm_genpy std_msgs_genpy)
