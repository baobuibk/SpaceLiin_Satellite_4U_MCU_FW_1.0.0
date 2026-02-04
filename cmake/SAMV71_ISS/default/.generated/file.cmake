# The following variables contains the files used by the different stages of the build process.
set(SAMV71_ISS_default_default_XC32_FILE_TYPE_assemble)
set_source_files_properties(${SAMV71_ISS_default_default_XC32_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${SAMV71_ISS_default_default_XC32_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(SAMV71_ISS_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
set_source_files_properties(${SAMV71_ISS_default_default_XC32_FILE_TYPE_assembleWithPreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${SAMV71_ISS_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(SAMV71_ISS_default_default_XC32_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/bsp/bsp.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/exceptions.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/initialization.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/interrupts.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/libc_syscalls.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/afec/plib_afec0.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/afec/plib_afec1.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/clk/plib_clk.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/efc/plib_efc.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/nvic/plib_nvic.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/pio/plib_pio.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/systick/plib_systick.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/tc/plib_tc3.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/uart/plib_uart2.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/usart/plib_usart2.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/startup_xc32.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/stdio/xc32_monitor.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/main.c")
set_source_files_properties(${SAMV71_ISS_default_default_XC32_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(SAMV71_ISS_default_default_XC32_FILE_TYPE_compile_cpp)
set_source_files_properties(${SAMV71_ISS_default_default_XC32_FILE_TYPE_compile_cpp} PROPERTIES LANGUAGE CXX)
set(SAMV71_ISS_default_default_XC32_FILE_TYPE_link)
set(SAMV71_ISS_default_default_XC32_FILE_TYPE_bin2hex)

# The linker script used for the build.
set(SAMV71_ISS_default_LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/ATSAMV71Q21B.ld")
set(SAMV71_ISS_default_image_name "default.elf")
set(SAMV71_ISS_default_image_base_name "default")

# The output directory of the final image.
set(SAMV71_ISS_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/SAMV71_ISS")

# The full path to the final image.
set(SAMV71_ISS_default_full_path_to_image ${SAMV71_ISS_default_output_dir}/${SAMV71_ISS_default_image_name})
