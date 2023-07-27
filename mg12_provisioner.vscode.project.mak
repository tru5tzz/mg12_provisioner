####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = C:/Users/Trung-Laptop/SimplicityStudio/SDKs/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.2.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4162A"' \
 '-DSL_BOARD_REV="A03"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

ASM_DEFS += \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4162A"' \
 '-DSL_BOARD_REV="A03"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

INCLUDES += \
 -Iconfig \
 -Iconfig/btconf \
 -Iconfig/btmeshconf \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(COPIED_SDK_PATH)/app/common/util/app_assert \
 -I$(COPIED_SDK_PATH)/app/common/util/app_button_press \
 -I$(COPIED_SDK_PATH)/app/common/util/app_log \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/app/btmesh/common/btmesh_factory_reset \
 -I$(COPIED_SDK_PATH)/platform/driver/button/inc \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/leddrv/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/include \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/service/mpu/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/common \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg1x \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/simple_timer \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libbluetooth.a \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libbluetooth_mesh.a \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libbtmesh_advertiser_extended.a \
 $(COPIED_SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM4_gcc.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA