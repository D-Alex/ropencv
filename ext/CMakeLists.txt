cmake_minimum_required(VERSION 2.6)
PROJECT(rbind_opencv CXX)

include(FindPkgConfig)
pkg_check_modules(OPENCV REQUIRED opencv)
add_definitions(${OPENCV_CFLAGS})
include_directories(${OPENCV_INCLUDE_DIRS})
link_directories(${OPENCV_LIBRARY_DIRS})

SET(RBIND_SRC
    "${CMAKE_CURRENT_SOURCE_DIR}/types.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/operations.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/conversions.cc")

if(CMAKE_INSTALL)
    add_custom_command(OUTPUT ${RBIND_SRC}
       COMMAND ruby "${CMAKE_CURRENT_SOURCE_DIR}/extconf.rb")
endif()

ADD_LIBRARY(rbind_opencv SHARED ${RBIND_SRC})

TARGET_LINK_LIBRARIES(rbind_opencv ${OPENCV_LIBS} ${OPENCV_LDFLAGS} )
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/rbind.pc.in ${CMAKE_CURRENT_BINARY_DIR}/rbind_ropencv.pc @ONLY)
install(TARGETS rbind_opencv LIBRARY DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../lib/ropencv)

if(CMAKE_INSTALL)
    install(FILES ${CMAKE_CURRENT_BINARY_DIR}/rbind_ropencv.pc DESTINATION lib/pkgconfig)
    install(TARGETS rbind_opencv LIBRARY DESTINATION lib)
    install(FILES types.h operations.h conversions.hpp DESTINATION include/${PROJECT_NAME}/${DIR})

    if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/extern.rbind)
        install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/extern.rbind DESTINATION include/${PROJECT_NAME}/${DIR})
    endif()

    if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/config.rbind)
        install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/config.rbind DESTINATION include/${PROJECT_NAME}/${DIR})
    endif()
endif()
