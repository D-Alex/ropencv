cmake_minimum_required(VERSION 2.6)
PROJECT(rbind_opencv CXX)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(FindPkgConfig)
pkg_check_modules(OPENCV REQUIRED opencv)
add_definitions(${OPENCV_CFLAGS})
include_directories(${OPENCV_INCLUDE_DIRS})
link_directories(${OPENCV_LIBRARY_DIRS})



SET(RBIND_SRC
    "${CMAKE_CURRENT_SOURCE_DIR}/types.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/operations.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/conversions.cc")

add_custom_command(OUTPUT ${RBIND_SRC}
       COMMAND ruby "${CMAKE_CURRENT_SOURCE_DIR}/../rbind.rb")

ADD_LIBRARY(rbind_opencv SHARED ${RBIND_SRC})
TARGET_LINK_LIBRARIES(rbind_opencv ${OPENCV_LIBS} ${OPENCV_LDFLAGS}  ${GEM_LIBRARIES})

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/rbind.pc.in ${CMAKE_CURRENT_BINARY_DIR}/rbind_opencv.pc @ONLY)

set(ROOT_FOLDER ${CMAKE_CURRENT_SOURCE_DIR}/../..)
if(GEM_INSTALL)
    # local install
    install(TARGETS rbind_opencv LIBRARY DESTINATION ${ROOT_FOLDER}/lib)
    install(FILES types.h operations.h conversions.hpp DESTINATION ${ROOT_FOLDER}/include)
    install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/extern.rbind DESTINATION ${ROOT_FOLDER}/include)
    install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/config.rbind DESTINATION ${ROOT_FOLDER}/include)
else()
    # global install
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/rbind_opencv.pc DESTINATION lib/pkgconfig)
    install(TARGETS rbind_opencv LIBRARY DESTINATION lib)
    install(FILES types.h operations.h conversions.hpp DESTINATION include/${PROJECT_NAME})
    install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/extern.rbind DESTINATION include/${PROJECT_NAME})
    install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/config.rbind DESTINATION include/${PROJECT_NAME})

    FIND_PACKAGE(Ruby)
    IF(NOT RUBY_INCLUDE_PATH)
        MESSAGE(STATUS "Ruby library not found. Cannot install ruby extensions")
    ELSE(NOT RUBY_INCLUDE_PATH)
        STRING(REGEX REPLACE ".*lib(32|64)?/?" "lib/" RUBY_LIBRARY_INSTALL_DIR ${RUBY_RUBY_LIB_PATH})
        INSTALL(DIRECTORY ${ROOT_FOLDER}/lib/ DESTINATION ${RUBY_LIBRARY_INSTALL_DIR}
            FILES_MATCHING PATTERN "*.rb")
    ENDIF(NOT RUBY_INCLUDE_PATH)
endif()
