# Patch include paths for object libs and/or final target
if(TARGET SAMV71_ISS_default_default_XC32_compile)
  target_include_directories(SAMV71_ISS_default_default_XC32_compile PRIVATE
    # ===== Dev roots =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/Boot/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/OS/"

    # ===== AppOS sub-apps =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_3_CLI/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_3_Network/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_3_USB/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_4_Alive/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_4_Logging/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M0_App/AppOS/App_x_Root/"

    # ===== SysApp =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/EmbeddedCLI/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/EmbeddedCLI/CLI_Auth/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/EmbeddedCLI/CLI_Command/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/EmbeddedCLI/CLI_Setup/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/EmbeddedCLI/CLI_Src/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/FastIPC/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/dmesg/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M1_SysApp/xlog/"

    # ===== BSP =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M2_BSP/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M2_BSP/BSP_Board/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M2_BSP/BSP_Led/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M2_BSP/UART/"

    # ===== Drivers =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/dio/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/dio/dummy/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/dio/nxp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/dio/samv71/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/i2c/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/i2c/dummy/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/i2c/nxp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/spi/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/spi/dummy/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/components/spi/nxp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/AD4114/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/ADG1414BR/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/AS3004204/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/BMP390/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/LT8722/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/MCP4902/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/RV3129/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/ntc/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/pca9685/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/slf3s_flow/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M3_Driver/devices/tca6416/"

    # ===== System =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/System/"

    # ===== Middlewares: Config / OS wrapper =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Config/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Config/FreeRTOS_Config/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Config/LwIP_Config/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Config/TinyUSB_Config/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Os/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/Os/FreeRTOS/"

    # ===== FreeRTOS kernel =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/FreeRTOS/FreeRTOSv20240604-LTS/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/FreeRTOS/FreeRTOSv20240604-LTS/include/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/FreeRTOS/FreeRTOSv20240604-LTS/portable/GCC/ARM_CM7/r0p1/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/FreeRTOS/FreeRTOSv20240604-LTS/portable/MemMang/"

    # ===== LwIP (bạn đang include theo layout không có src/, nên bổ sung theo các nhánh bạn đang dùng) =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/include/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/api/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/apps/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/core/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/core/ipv4/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/core/ipv6/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/netif/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/netif/ppp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/LwIP/netif/ppp/polarssl/"

    # ===== TinyUSB =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/common/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/device/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/host/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/class/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/portable/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M4_Middlewares/TinyUSB/typec/"

    # ===== Utils =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/Define/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/DateTime/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/RingBuffer/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/Tick/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../Dev/M5_Utils/prnf/"

    # ===== MCC generated =====
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/bsp/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/peripheral/"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../My_MCC_Config/src/config/default/stdio/"
)

endif()
