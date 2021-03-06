set(PROJINFO_SRC apps/projinfo.cpp)

source_group("Source Files\\Bin" FILES ${PROJINFO_SRC})

#Executable
add_executable(binprojinfo ${PROJINFO_SRC})
set_target_properties(binprojinfo
  PROPERTIES
  OUTPUT_NAME projinfo)
target_link_libraries(binprojinfo ${PROJ_LIBRARIES})
install(TARGETS binprojinfo
  RUNTIME DESTINATION ${BINDIR})

if(MSVC AND BUILD_LIBPROJ_SHARED)
  target_compile_definitions(binprojinfo PRIVATE PROJ_MSVC_DLL_IMPORT=1)
endif()
