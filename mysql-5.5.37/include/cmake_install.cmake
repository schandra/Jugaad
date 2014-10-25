# Install script for directory: /home/schandra/Jugaad/mysql-5.5.37/include

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/schandra/Jugaad/mysql")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql_com.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql_time.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_list.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_alloc.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/typelib.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql/plugin.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql/plugin_audit.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql/plugin_ftparser.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_dbug.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/m_string.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_sys.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_xml.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql_embed.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_pthread.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/decimal.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/errmsg.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_global.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_net.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_getopt.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/sslopt-longopts.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_dir.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/sslopt-vars.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/sslopt-case.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/sql_common.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/keycache.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/m_ctype.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_attribute.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_compiler.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysql_version.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/my_config.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysqld_ername.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/mysqld_error.h"
    "/home/schandra/Jugaad/mysql-5.5.37/include/sql_state.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE DIRECTORY FILES "/home/schandra/Jugaad/mysql-5.5.37/include/mysql/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

