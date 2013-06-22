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
   COMMAND ruby "${CMAKE_CURRENT_SOURCE_DIR}/../generate.rb")

ADD_LIBRARY(rbind_opencv SHARED ${RBIND_SRC})
TARGET_LINK_LIBRARIES(rbind_opencv ${OPENCV_LIBS} ${OPENCV_LDFLAGS} )

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/rbind.pc.in ${CMAKE_CURRENT_BINARY_DIR}/rbind_opencv.pc @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/rbind_opencv.pc DESTINATION lib/pkgconfig)

install(TARGETS rbind_opencv LIBRARY DESTINATION lib)
install(FILES types.h operations.h conversions.hpp DESTINATION include/${PROJECT_NAME}/${DIR})

if (EXISTS ${PROJECT_SOURCE_DIR}/extern.rbind)
    install(FILES ${PROJECT_SOURCE_DIR}/extern.rbind DESTINATION include/${PROJECT_NAME}/${DIR})
endif()

if (EXISTS ${PROJECT_SOURCE_DIR}/config.rbind)
    install(FILES ${PROJECT_SOURCE_DIR}/config.rbind DESTINATION include/${PROJECT_NAME}/${DIR})
endif()

