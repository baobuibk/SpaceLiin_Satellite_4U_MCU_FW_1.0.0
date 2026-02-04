set(DEPENDENT_MP_BIN2HEXSAMV71_ISS_default_7vCArZqW "c:/Program Files/Microchip/xc32/v5.00/bin/xc32-bin2hex.exe")
set(DEPENDENT_DEPENDENT_TARGET_ELFSAMV71_ISS_default_7vCArZqW ${CMAKE_CURRENT_LIST_DIR}/../../../../out/SAMV71_ISS/default.elf)
set(DEPENDENT_TARGET_DIRSAMV71_ISS_default_7vCArZqW ${CMAKE_CURRENT_LIST_DIR}/../../../../out/SAMV71_ISS)
set(DEPENDENT_BYPRODUCTSSAMV71_ISS_default_7vCArZqW ${DEPENDENT_TARGET_DIRSAMV71_ISS_default_7vCArZqW}/${sourceFileNameSAMV71_ISS_default_7vCArZqW}.c)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRSAMV71_ISS_default_7vCArZqW}/${sourceFileNameSAMV71_ISS_default_7vCArZqW}.c
    COMMAND ${DEPENDENT_MP_BIN2HEXSAMV71_ISS_default_7vCArZqW} --image ${DEPENDENT_DEPENDENT_TARGET_ELFSAMV71_ISS_default_7vCArZqW} --image-generated-c ${sourceFileNameSAMV71_ISS_default_7vCArZqW}.c --image-generated-h ${sourceFileNameSAMV71_ISS_default_7vCArZqW}.h --image-copy-mode ${modeSAMV71_ISS_default_7vCArZqW} --image-offset ${addressSAMV71_ISS_default_7vCArZqW} 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRSAMV71_ISS_default_7vCArZqW}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFSAMV71_ISS_default_7vCArZqW})
add_custom_target(
    dependent_produced_source_artifactSAMV71_ISS_default_7vCArZqW 
    DEPENDS ${DEPENDENT_TARGET_DIRSAMV71_ISS_default_7vCArZqW}/${sourceFileNameSAMV71_ISS_default_7vCArZqW}.c
    )
