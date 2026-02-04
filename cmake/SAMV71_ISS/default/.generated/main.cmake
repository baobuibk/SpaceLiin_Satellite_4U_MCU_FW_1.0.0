include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(SAMV71_ISS_default_library_list )

# Handle files with suffix s, for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_assemble)
add_library(SAMV71_ISS_default_default_XC32_assemble OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_assemble})
    SAMV71_ISS_default_default_XC32_assemble_rule(SAMV71_ISS_default_default_XC32_assemble)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_assemble>")

endif()

# Handle files with suffix S, for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
add_library(SAMV71_ISS_default_default_XC32_assembleWithPreprocess OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
    SAMV71_ISS_default_default_XC32_assembleWithPreprocess_rule(SAMV71_ISS_default_default_XC32_assembleWithPreprocess)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_assembleWithPreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_compile)
add_library(SAMV71_ISS_default_default_XC32_compile OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_compile})
    SAMV71_ISS_default_default_XC32_compile_rule(SAMV71_ISS_default_default_XC32_compile)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_compile>")

endif()

# Handle files with suffix cpp, for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_compile_cpp)
add_library(SAMV71_ISS_default_default_XC32_compile_cpp OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_compile_cpp})
    SAMV71_ISS_default_default_XC32_compile_cpp_rule(SAMV71_ISS_default_default_XC32_compile_cpp)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_compile_cpp>")

endif()

# Handle files with suffix [cC], for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_dependentObject)
add_library(SAMV71_ISS_default_default_XC32_dependentObject OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_dependentObject})
    SAMV71_ISS_default_default_XC32_dependentObject_rule(SAMV71_ISS_default_default_XC32_dependentObject)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_dependentObject>")

endif()

# Handle files with suffix elf, for group default-XC32
if(SAMV71_ISS_default_default_XC32_FILE_TYPE_bin2hex)
add_library(SAMV71_ISS_default_default_XC32_bin2hex OBJECT ${SAMV71_ISS_default_default_XC32_FILE_TYPE_bin2hex})
    SAMV71_ISS_default_default_XC32_bin2hex_rule(SAMV71_ISS_default_default_XC32_bin2hex)
    list(APPEND SAMV71_ISS_default_library_list "$<TARGET_OBJECTS:SAMV71_ISS_default_default_XC32_bin2hex>")

endif()


# Main target for this project
add_executable(SAMV71_ISS_default_image_7vCArZqW ${SAMV71_ISS_default_library_list})

set_target_properties(SAMV71_ISS_default_image_7vCArZqW PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    RUNTIME_OUTPUT_DIRECTORY "${SAMV71_ISS_default_output_dir}")
target_link_libraries(SAMV71_ISS_default_image_7vCArZqW PRIVATE ${SAMV71_ISS_default_default_XC32_FILE_TYPE_link})

# Add the link options from the rule file.
SAMV71_ISS_default_link_rule( SAMV71_ISS_default_image_7vCArZqW)

# Call bin2hex function from the rule file
SAMV71_ISS_default_bin2hex_rule(SAMV71_ISS_default_image_7vCArZqW)

