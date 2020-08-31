# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "omniwheel_control: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iomniwheel_control:/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(omniwheel_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_custom_target(_omniwheel_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omniwheel_control" "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" ""
)

get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_custom_target(_omniwheel_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omniwheel_control" "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omniwheel_control
)
_generate_msg_cpp(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omniwheel_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(omniwheel_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omniwheel_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(omniwheel_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(omniwheel_control_generate_messages omniwheel_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_cpp _omniwheel_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_cpp _omniwheel_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omniwheel_control_gencpp)
add_dependencies(omniwheel_control_gencpp omniwheel_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omniwheel_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omniwheel_control
)
_generate_msg_eus(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omniwheel_control
)

### Generating Services

### Generating Module File
_generate_module_eus(omniwheel_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omniwheel_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(omniwheel_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(omniwheel_control_generate_messages omniwheel_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_eus _omniwheel_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_eus _omniwheel_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omniwheel_control_geneus)
add_dependencies(omniwheel_control_geneus omniwheel_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omniwheel_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omniwheel_control
)
_generate_msg_lisp(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omniwheel_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(omniwheel_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omniwheel_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(omniwheel_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(omniwheel_control_generate_messages omniwheel_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_lisp _omniwheel_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_lisp _omniwheel_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omniwheel_control_genlisp)
add_dependencies(omniwheel_control_genlisp omniwheel_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omniwheel_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omniwheel_control
)
_generate_msg_nodejs(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omniwheel_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(omniwheel_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omniwheel_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(omniwheel_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(omniwheel_control_generate_messages omniwheel_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_nodejs _omniwheel_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_nodejs _omniwheel_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omniwheel_control_gennodejs)
add_dependencies(omniwheel_control_gennodejs omniwheel_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omniwheel_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control
)
_generate_msg_py(omniwheel_control
  "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control
)

### Generating Services

### Generating Module File
_generate_module_py(omniwheel_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(omniwheel_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(omniwheel_control_generate_messages omniwheel_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/num.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_py _omniwheel_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chenxin/workspace/tele_controll/src/omniwheel_control/msg/move_base.msg" NAME_WE)
add_dependencies(omniwheel_control_generate_messages_py _omniwheel_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omniwheel_control_genpy)
add_dependencies(omniwheel_control_genpy omniwheel_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omniwheel_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omniwheel_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omniwheel_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(omniwheel_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omniwheel_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omniwheel_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(omniwheel_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omniwheel_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omniwheel_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(omniwheel_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omniwheel_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omniwheel_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(omniwheel_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omniwheel_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(omniwheel_control_generate_messages_py std_msgs_generate_messages_py)
endif()