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
# SIMPLICITY_STUDIO_METADATA=eJztnQmT3Dh2oP+KQuHYWK+7kpVZhw53z0RPSd2rXWmkUKnX67AcDCSJzOQUr+FRR0/Mf18ABHgfOEnWeO0eScUi3vveww0CD397+eXr5//1/uabffv5t683729fvn354x8fA//FPUxSLwp/+v5yuzn//vIFDJ3I9cIjevDbt1/OXn9/+cc/fE++hz/GSfQX6GQv0N8xTLKnWwf9jd6iz7+/JK+9ePHjIfJdmLwIQYB/DfIsOsKw/DV+wfMh+3Xq2/ssgOnJdh134yCAPPHQc/zOW+vmrfVbigCtb0keHs8+gjiLYuvWC2LfczzEkOWuF1n3V/ZDlNylMXCgFRy3OxtB3XvYLphYlMDqqLJ4kE7zIZ0GkY4gy2x3b9Y/NSUTGEZ9UlMykkF+DrMoyk7mi0xdEw+Q8QJT1zQCFIHEtV14ALmf2V7oZeZd1atyGBHEWBHIkCA7e4qhcdf1KZxsBFBamHiOvQepecIBnVOQMzWcPI3mTC4a8crXb+/tmyiIUcIwS83ydHUN+8dh79moCAI/Ohp3Va/GYUAX3nsOJBXXdvzIuUuNl6t+lcOI8B5bcwKh68PEuP862njBTLuto20YzIvSLIEgoG8brg8DCgXwTLuuTyEHHimhXphmIHTmdGJXLy9snoKknnQ2xw5plwWf19c92gfAgz10Mz9FrWx48I42lWgWd1jnsHdbabIEhOkhSoJ5iDkBhvHj6AEmdgBCcER/z9XCDmodAI1TYDvJE9I6a3kYVTvs0xRrg/Y+zzI0FJ6vjRjRKw5rutiO6B2A9b3wDib4ycZ3TdK1FA3gbJzEocUC/9MkUEcVQ/rRKpaD+heHihSNtaHG7/cZfqP2+74FCWQEGUSSmROCe3zaPAa+CWsLXKugskaVW0LI9wsS3/MAF3LyhMydNyxbZuHtVy3gX7ogsZSLG+prNbVZMXqKPk49Xvxdx2WVrv66QRuZEmtA9ah9rWEJDKLkiQkx0phT7D5lI8Olx92VffAByrr0lGdu9BDSQeFMqBz6eTvLfRaez4Q9qliAd7sU73aaN7wPLsr1zRkwB/TxDkGNsvVq41tbQm2HM1Muj6jlWMufCbJP39TCPnozSyJ/LsIBnQOUII5ZxYoTmKZzUI7oHKH0o+NccE1VnKUvhA75WrFAQeyqHqvd+/xopw+ztDwD+sY+TNjuE/rRc2w8PHP3c7lzRC9vj7hEZ8hVc0CK9M/SC/ZqG/GfD2GceQFM5nJen0Le9ax5EId08vXX/uFxvoo9qHaA1Q2Am9zPgdfRNOy9BHi+nWfoD1QwZnLdkM6ROky38nhwth66VyNPXwjce5wuna3KTKjm+JhRTNrunSiYCXlcM19dh0G+QFVvap3ckjFX991SxufB0zKt5YmrtWy2E2D+pglMM+4zVJTDDCYHJNZ2DmbxerUNkMHA9/AgLoF0BDqD+0Z0Cm1dmrfSDGjm/UhpfI2to43ve8UROneRnbp39uVmt7kY/nAR+yDDnzhba7eNd96R2tt4o/POrYfsi8KPYJ+2Xuy8+v6Xrxe7T79ud186b3bFRnnSUd2zwJw+pRkMbHhILnbYnbGZL4Qtt1rMe1bhIqvmBasy0yqssHohrUnTMtRH5vHabeul7BrXWW0fyPgPoePnLkfOVwovLnaH7fnu8uhvd1dmKqakj6gx1gjrZDGo0trACeKV21cyCtnlOqs3q0AUsupgx15oaBeARssqTFHrosTU7lW95jFOEfucIF+7aRRRyKrkKSILQau3rQ4qaCEifwbmUUoh21JTu7U0Wpa2t3ZN24VnieFh9ZlWwxSyLgAoaeokHsJffcXr0gramsC/PgMbKaWIbXD9PQIU7xFgFqzeqgJRxKpDnENDB3302VVCilh2jJ1k9aPlElLMMm/1XQBjFLXLXv28raIUsc3brb4sUkQhq1ywfrMoo4hdPur41m4XYxS1y3ZW397XMIWsg2hIbepkr0brKkwJ6+x9fngmFjJUGSufQSFtkMrYmGbPxcaCVMzGZ7F6UsMUsy4HyTPIPUYpYluQrr5Lp4giVsVOuPr8YoxCdiWrX1imiIJWPYMeoKIUtS31jiHwn0PO1VFFrEzWvwaUiK8BJVGQgb2/+iFmnVPIvsxZfePPGEXtsp+HabakdQlcff9W5xSxL11/W5KKtyXPYnwsNTqmG+hXX93qnEL2JaGhbW0abaOMInaRvcZrN6yEFLHs/hmsU95LrFPiNHYUr36tss4pYt+Dayq0mj7bGKOoXWi6t/oZTp1z2r6A7mJfp1V1uuktpZ2NqGu0qZeSe0dp7+Oeh32P2rFfgiAKx7c/e6HTs+25uXMcZFHgzd1QF/AW4rMaCG0/dsIEhvncGwKaqAxgCrQ4cLmsV0uEKdgi3aKwFcIUbJol3uxDwSZshTAJ63uzf3BosTKCab+CLJ97daztV4ZgTbWPnaYuTTiauqJGzHtOgZqI+KwGAmc5XxK2QuAr54uyMgLxopNFke+cgNfuTLnK2FBgpmWcUZrC3FLBdLJwYIAyPYIYjEWVwKO3VD9SWU4bkw5TzxitP+fWxM8HfnQcHLXFK4aoKzGgC8VVBKUGw/soyvwIoCfjA+LmGfrxDqP57sz1uTKode7f6mKJt3gg9sZtb5zqXdJ0z+qgjPZFzePIaRYl4LgmA+pIo4bU71qoZfe8VbtlyTDTZJ7AJIkSJ5q9cerJiwYKf2FaHryBIlALYpCks3/1GK0EFZFEZV6RHTWkSUMSmEIcGH32k0Q9FjRZJvuP6f7XTbz7qb63iI6lZ4xdyJq5XS+MtArdbIBdkUwP0xphwtYA3wEyOUmgWuYt/E2z6ci0IhHNsxXAd4BkR9XdSozjo+ipn2WAwWVKOVHPCnmDxWQBrxQtUkwKo2kpabCYm3fdfLr9cDve7N9ESTdeBndYjYaPnSD1UnIrk2fs+qJBLxNTLWxN+SmoyzPRnhQJ6JWRa+Gv4UzgZ7+TGLbwce4l7R72JguX34+z744Z9PlxaANMExtHrXKCyxVQ10gmoIM4t0ES3L9anrqBYq4RTIvrCsabwVqsuanWkLe36Vz9Nq/DqdlWDaTqffrYpgdb7XDj67SIkYnZM/8BfU5zBo/lT0VpXKc5jEzMHn+19vhS9oT3s+/p4LSHkcmNxHmnH61rC9LtzBORPmeU85FeOOHWZLVGVWzibcpqjarBibcsq7XKl7WK1OJVmsTItC2LsLDQelZGmLSFnMfUM8/VcaZLQBkhO4EZSI4ws9MMQa3Mlh46AdNQmiJicHEZ37os68AJGEbOJa/MHsYkYka6RjvSAUN0ri+WdXWZcV1pPB3U1XGk69e6TOnCidavldkzHIugZYa3Rjt6oIQbilUY0gOlbXgSxLmmfYtxvlCzijSX+xULCKObFeOlFmKwnWx3X9y76CJdCho3FOkpDw2RC5WMBgMrIx2w6UaheYET+Ti2WosqPFG7TsC30/PlJpsctjUQOXqlZuo48e5BNvcWoDHzRghNtmHNKrAGd9B2rQMmVzfXalGFJ1p2V2RSD5m2fqg4HamnA6InLfGqzkINWkFQ7pZq8nDsHSoSIJUOvlEVkAtB12RKl8xko1X33zK1gTqB7aRq8sjm54pM6ZLpq9jlLZ2aKncpb6kKUQJUR8jqSBzFobq4FA9rSIyk9dnSYBM2aq051ITj6IybSZeqtG2L+riMNsFVEV/cA+UB5TqSUE6uxYY2k7ZGN3ehD570NLiFrIWqcqGcVeMKZbo9Kt4l27iuA7Jv7nY1FrSoTFZc6rJlCjy1nVbYCsXcljoYuMn9xIY6cp20hrpRCJq5YhAD6ZXYpFBVFMaKEVUxbxlqGIpLUEWhrZnsDYUj4yG4wAnFwkG1QBhw8GyirH/w7Rnk0FqSx5O7TzlqTEPeIhWnQUDqT4fJWDVqalqisDStx2Wmw6St7IT3wYWGIoPF2C48gNzPaLAf2/fCu9knF4UHMQ4pNuNcE8MTkhhPRA4+SE8rMKTBwgOP92avgJthGKuz9WxepMoSe3FNbZNw5NLywJygC8ys+7w7MI8er7yrwK5YuCvv8twMQ67y+t5+qvKiV4iim0+XZKoFljIZgVg9MCanQV33iMY9g0Fx6/XcrTx2Fm7ga/pHYyTg99y5F1CbmG7/xuEWJb7YeEFKqn6SMkrmjnvTxKT6JznLq5SXhK1DcBAjkoVxKcEkK77veElSqn+K093PvR+ngUnVT1HCZWs+5Kv5xfWmC3KWANOks58daIH2nw5oc+JLOhfEpOonKXEs+yUxqf4pTnKH5oKcTP8kJ70ycknUCmGadvFetIYwTbvAaZQW7NDZkzYrvvhuQVCqfooyisGyg/wSYIqU3Li3ICjTP8mZzB30s4mZ9AT37FImy45JEr4xyQJ7Y5qYA/tf2pzFPqolSSuCKdbF23vu1n6JI3sN0uHjeS3S+4XHUPecYyhy/82CnEy/eOjhyStJ2HrR3Aub2Dry+bXSz7NetSRmfxiazhrAyVvUm0w/z7rakpj9YXB6KEnENzD/d6QmbI1i4nYGz17Yu02EyVq1xNU5zYrFd3MOenM/+40pDdB9320pfWvBC9zv0yyvfNf74JEaCA55uGi7WkOYHC8sEsqxQTsSvrH3m8CipSCZjpXdWI5fErYOwflNYFlcSsDHuoZOrA3C9TVjSWCqn+drxoKYVD3P14wFKQfCDvZ/zViQswTg+pqxKKjHVf/x54QFMal6rq8ZS2IO3Azc+zVjQU6mn/drxpKoFQLv14xFabl7f/otYVHYoQA5fV8zFgSl6jkoVzBAaVLwfYFZELcE4PoCsyAo08/zBWZJzIRrdp0sO45K+MZR5AvIkphZf8j7zheYZb2Z8nmTfqVZErQk4PtOtCAqdz+6RMS2BulwdLa+70RLLvpwjk7Jd5oFOZn+ye9EPLcsOMiIrH0auhOmgvTYCDGcPunm28Eeupmf2mkex1HSTdFz1BBHhux5r+X74r2zIjDxGXAc6MMELBIvpHCbVfeM1TXdKoitcfCeYwn9u/w5z4h1DzojuiSKn+wTSNwHMPseZm530YPgfbhdJ3XNpOJWbl2NctIoupoHZr8qV8ioJiWvUdCZe2uVjFGUctIoJsJx5o9CLmBVC5PfrGD2PRxydgX9ez0GDUtPc++blbKLYsp3Ff3nOYfb0JV2qCzSa0U5mdOoWbLB7CdUhSyqIU63nk6wdnNqiNPmoAq7entqjNPjkBPYrt2gOiOPQbur62dgUo2Sx6grxLF+o2qUk0Yd1980HMeahqHDzXyXWPl2nAK799Lsvtf5pk4eEZol4fyhrQe8WhlZRUuuIXLMkzy2SQCnobJWbF0/LJedlbRlAt6KZWGLVNRCuh3sWdhYsXJZmUK2I8t2YQxDF4aOt545cY+tI8S88+MiknQAZz/Yw2tnL6dY+wNCBJegpGXB8OLT82iNRtAVfXCaP+6RHg+cBoMkCdm/oqUGIfN5lx7GpQAI3GdpPgM3sUbRvJYl3yOre9/srmdgE+6Bn8PVLGnUnIpHxIU1Vge1txgNOZJvjLdOBwzDSo6A1mtmL6vSCGi9to4QS4yA1mlnL6ds+4+PR+BPgmvO1ClsWduzp3jVhXkM2cA6RhJlkRP5VK3OxYym5GXCLg07vklXTRwHqfl6iGby1RQzPmvVi5jUzpAEIJvHt4UkwPPtvlCDfJGkWzmFpc2cNcRGi5nBwkUzkIlokSRZcJh7v9owM4Ph4S4OY9owSSI8FHFnb3xHzOhn47FqiV5kxJCxHqLDfoAgy5M14deJ5MKQspZsugPb+3C6AyNU6M1lXcSMshCJVUdSmPdCCF+f77ZXl5xOqBKsxBcVkNUDKO+Z3x/APW/JIO+uxB+ExWpiaR4n4ggQ0xULHpKLHc+iCnnx8bh95FlXIYZhADuNoeMdvLn37babLYRiEQus0g6rH1JoWUUpg0CeRUfYP+5pR2smrAn0IUg5ijtLwGzd4aDJLPnMkZxbOUGNtlo2WZPImmtH7OdHj8P3MThzopAuVKTaKwoa5hOz8wz9EQMbTQXul+7jC9dYTctr9WaYWWVJEguq1BXlYOZ5J5cfhjgnZ5qlp9ZtWwuRy6yOP1ZYfoc4ufOtGK6v28A+TuGCuWLbRs3iHTPWGq/M49rz2kixiorbILL6EHnOQzQTrSHfJ+yaZamr+6A1boub42qe1az2FZPIoKlVMaSGLnVMrYxVb86Th0gfWwjAhliVfquJMrGugbJ3RegdGrk1DSxjn2dZFCIQmPYNGTuZV39/nualzw91is4DjrutOkkWy9FxS5Sy1o/6ziF2/ODPFSm0z3yk3KpBcGSbP9eB1Slc7kZjceImh7nbiPZZANPTeHfCdxVnIck+ACeLkic0t07hZNeCrOxLNl/ZLrSzHOhjsUYYp8tSb8rZCpaCddKtGJV2hAjKc+x9/4rSgJ/qqRYuBHUUa5jQYM30c5hFUaalcqbYS7CI2sBzpXzt9RnzgVnMsqKOYfVgTde/Ror56p2QITrb96nJRe8nMbmCN3lJHd5MsM9s4KJ5dualZNMZjkMw0wy3+k7GMoPtcBiCmgy5vMfXyYYhJBuOVmRNLxSPNe4T+hm1ZkeQZe5+RRYNgvFY5e8cEK/ImDYPjw0xeEjWWXWGybjsQr1n5KKcRRLWZFQ/lqhFK8ytUToe+9Kn0FmRQS0crjb7BFD7iHrdKA9dLzyuyJoRtAnLiC8y4NzNebRwyJYuDAd9GTMjCjP4uAYTeoim7SDTAt/bL89fJ+HkRnwumu/NdeJtCr6OY+Aammq4hOoYvrB9rk/hXbvZzu4uDk+L1m3MV2BHL5TcmHoF1vRCyY+pV2DRIJjwmHoFxrR5FMbUK7BmmEx2TL0Go/qxFMfUKzNMLsfqg9gVGNTCURlTr8CaETQey2jziLrjNRjTpOGeE6wiN/pwOCzw/fXgN1gm2Y8gnmufyzA0g+Dw9BpwSwo+Xhq739t7PoJZB32XSWzuvrwRTRgO+jmPOo2BD55x4lhvWJ6+h4jDjnnvpxvj572mrjbBX1Gp7wHitGIV7WadhJN7HR1Ui4WTvdHG4lg3SbSCBmgUjdcy3IWspEHtAeK0IoAB3j2ylpFbPxOvLZGL5w/02BYJlL+G1UIePE4L2TaWQtTqSuAYnsCK/DqMoSSiK/LrgK/jcHv+eMrwvHulhWuUj9PGEgDLSaATJe5azBtCE/+eghwz9T0FKd08kvcWsRxptuoQfLm3CuIaiHjOcEQ9ef/L14vdp1+3uy/Tp1B/vbnhOvVbmjHTId+u+/BZnsoyC4Fbba7Jk0n1BDbJhpVaU8JxmUQnBNWSNJpR4rBn7trMGwVd/vwVu/VndItkhF5S3h5pEzEz7t9gpllEcfntvUEx2YSSt/GKRRL5xf3Ei7O3aYxsHWjqmqezbxnNOvo2CF+ezbfqMobdv9QitUO+N9Z+791ueXHbmR3h0JfpQzekHVdAu7ZbnWim43SlP2lYwH6jWJ2gWHLHN/pj4PZZPm9JGrecljBnYN2Fs6voOCN43F3ZBx/gedApz9zoYfqgxUDJ6VxS2BVd3FTJd0tSN/UyJbEHpLxnbsjCgV8KxW5WK8zmM2ORytGXGezCKtHMWMVR+M459tbvs5OHepQYmTFxgyj90DJVeUmUoKQtq5Pns12HSE6E1oxk17FZFNQavPKwfWXXSngHr/1r8s54CcM08si1Cj3U9kMCZrpXkhO9JJrin+3eg2nwwasMGsSz3eA5CTx4S2ebl0WzWg12DWiS3p3pWhAObnfgoo/mHZszXWQxyRsMXUxRp917xzBfS0NdwUyVipDclbwS7BoNH7cdR76/LvgSaaq9zhLbTfYzHWOabrNrOBPkJ3yf5YrQGzxTZ8pPYLsSbIYyTby7ul4PM4WZKt1RmGYA33PgBTOFgpgu4m2mCRuyUwIB3oG8Ev4GzwQ7C6S2EvQ6Dic5Ceu2MvySaWosENpBPtMa8/RYoIThGsHYXpjBJASrwe9SCczk1mFDi2iy7ZzvHiqORnP4oqnhFn9thWgYTtCqe5B6c4WJF7aqguOYyTInzHflM9d8to3FZcmqcqWNJDKTWYkFLaTJefqa2toazRR3nM565980egOIg55ccrMi+JKHgx2PZefaJskFXwFx0GcJUrwi+JJnanQNXD9y7lZCXqOZ4r5bUxtTo5nkfki8bC0lpUYzdalUCnAPbJ+gHyPMlfD3UE2tnqS+7cJ9flyZJb1cHLY4vjfbfaZcRlRAHPSBl8501Q8XO8PhIEdJtxdrG2n2g3Fbcwef1lQdmlBT7SpqCdh1nkUJXMlKUR+X9FYuP3f7o+9y7Y7oOA3MdYZj0E3UpvJnwHmjM0g8sDZ0ijTNnobbtbFTJC72NQxg+gwYGcq0FzZBCq9nuuuQ24QKapq/+Jq7Mv4Sapo/93y8c/gw0+XJ/DY0wCbtcNBfvr+6lqiONW2Ds7aCRImmyU8A/bc7Xxt+DYvThjjyZwp9ImgFA+OwA84cpUjAEjgasahrS7FDcGVWlFDT/Hi33croKdI0Owm9cLbbPK7NggYYhx0kBiga/a/OjjoYjx21LRKrM6XJNm0N29O0MkNqWJM2kEWilRlQMnHQr23G6XLOON3T2sZJlGiSnOyuXRc6Q+JhX10TWjJx0P8lBndrazdrVBwWLP2JpUs/8JllYCPzyugrqmkLVvAxt8M//EG3RX9c3bzyyDmvPN25M4WK5UZnSNPs5dbnlRlQ55q0ohZHcX3zyS7ctD3u2mxwObmvVgd+xUdeRIrb54cDTGzg+9HapsQDhJOWhTCz08i5g9naRtItsmlLvDSz7x7WZkVFNWlB5K2tYlOiSfIYrq13pkTT5EvvVeqAD2xX6nA76Xa3OnYGxcW/tt6gZJqmZ+dNVmZADYvbhjWuxXXY+K0hR2hWag1jm7Ym8p+2F+erqyA1rGkbEu8eZNAGjkPvvV+TJR24aXtSsMrCVcOatCHxUL/obq/X9pGzwTVtxerW8BLOFTxyJndd6AyJhx2fzV0dPYXi4b9a3YipgprmT9fW9FAiHnLbAc5pbaOMBhefFeSzeZp72eo+PPXh8dkURXfeKrOmBOOyI/PwWsEK7ajAJu2ojuCvy4wG17QVXrBCE0qoSf5Zb9DhNmDkNp2OBY9X529Whs+QuNhtJ1lbZ1fH4rVhba1RHYvThnRtnwzrWNwhKDtnGtCsafo8Q3HQYiX2I2KrAprem1QcEsE7kDMvJHcQRemKhi2VOQOMohaiGX3gZd79mi1sMvJaWOwVXJ9VFRe/JSv6ANuwhH83b5GiCKm7juP9PQZ18ITtIjcOpqtuN8ZZZS1eczsyzsprMUqarGUBrWZcicVrx8o+wtRMEfoOQ9OkkGbv+sxpoHHb4/2+xipUYnHbkSW5s8Let+LitWTGS9ZEDBm8W23Ijnvg52s0pOIyHxq/M6FJPWRlFNo+2LdPanffRO+gTiTpnv1un/wuNhUFIATHzk0qnezBEQ+KjUfznZWvm23VLLOa6FaDbSqCQfnufEVM3I6eYqbrooX2j3XngNhQUHUq2OpTGgDP0AUmTHKvWoxkpAhQwb1KnQTiD9N738ZP080eZCYQetVwAaVGXNKnpRcHL0TjaITB8XwTh0cTLB0VEyBb8yBbLpCdeZAdF8iFeZALLpBL8yCXXCBX5kGuJkE2gWsOgQgvlTdu4mIU7+AB5D5uz1AHB/3GE3L92039qnT0633iXp6fb8Hb8w3+/5/Pty/wo+31rnq0Q4nx2KydNnDyDUBzMHhILnYbDF38E/8rvrjYHbbnu8ujv91dIQFZFPnOCXUGbSlOFGyK/niTphv82sZzIRFcptkcw3zjuNnb7fnmYrPd7M532/PXu0skF3XzYxLdu02aAQf9mccweUsGBBv7bHu+3V5eXGwvt7Ux148uTJ3Ei7FD//CjVf+JddsNp5OnP+KLN/8CnYz89PKHl7cfPn35+OHmw7d/t2+//fbuw2f70+d3v318f/vy7cv/+BsuKEF0D1FOvj0AP4U/FNE1Mi98/0gGvGhw+fY//rN6fBvliVM9DSI399G48u33lz9SzW8/fSIPXzwGfpi+pU9/+v79+8tTlsVvLevh4YF5BDnHSlPrS/HSBpJR6ndcPAp1JBma+RQPPZf8nDubQu8mhVkeb27IsheV8SVKsz/hOBybdrndHB2HiIndoCH3D9+Rs4hHySgfv52iIpbhyLHkxc3/wH9a9L3Sx8zSP3x/WTkI+QLL/fsPas5Fo5E8i44wrF3l7Drk4pAfhn6HutDV5AlATccdgvuE4G6K5dZ/kPw4IhDb3bdygj1dYx78I/h/NU79R2tmij4ET1FskKKhQVb7OvJD49f7PMsi/FELpungS350HPwdsifGlzzD/uT7DP+jqEmNnm1T/GboXQR97znQLtrBYoCxQeWB632ccSIvPz513/aLKOMHNFiynUPHKpyUCERtNDO8elp/1w2Am9z3OgcGvrcnSwQ0zmffS+F9cME80PtCPZxgz69xd1LeNl67kXvyXZ4XQlSUUWYOvtu4unnoJdTGPqHBpefYOHfc/fCLJMPGf4vabZggUTh02tCrhbPTh0GHuZCUD3yPMe6EHZ73YJDzvHY6PHKp9Ufe81A7hcbrQXG9p32P2sChV7snU5u/Llamhn47dKPoUII4ekAli65zDb2UAM8nu93tGHC8k3lDL6V4hgNZE7bPwnPuN7d8bw695EMY41MtdRtX05nlzj/C2KAahX399t7G8y9kQlgcI60N0XwvvEOtNJoHb3y38Ztmybfp41byTts58B7KdNTZoel0cSk1/tzRfaNsGXsG9OWvuqlIG8kaeHJ1+sB8YPB5V2a3Ley+5DCf2sgqgPr47iv1BsnBUdjTLgO8xyJOIHT94g7VsV93NJRNWfFGj/zOG8MyCKdHIkA50y8WLVn1+rDm3tc70lsFLktAmJITY4NFqtlcDrqw2SaNAA+9uK7W6RsM8Ld1+Ozbp+Jjxw/lN4YfBhb+e56nxevtz0hIkFU2FfRaJYvmKulvarlMfqYA6nJGeEhbwoTQlgUNizM8cEDTBpjVWpzG8zE4eaGCpPU2cKhpHOakssjnvWo2VfvnCM5A2qIrEU9en6l1HgiYMC6Hnwd1GOxvAe31VGK6qN+GE55QP/oAEmiRHhV/3O9MQSRSkg6ZK1madBXax9iLBtwzlrw2DBhMVmznaa4X2xHeW4ZmNswIJxrKU045FAvL4ePpmTQwmMH5xMAvOcn7NFJsYY39NrK9YNbNp9sPt9YN/qj/gW4ecYLUK/Ytev5gQzotAPV90mlrp0pE0+O1Bye4lEgaxLkNkuD+lUTa7He2/3Eq8TsyArVui60VH/HOive/fL3Yffp1u/tSyhv4JqRbuA2cINYv1J3MeXGZBztG4z8jcqMk0y/YCXL9MpOnaGx0oySZnuHQKzaFk5VYWCiew9Hg9XrlBsBm3y8j/S5G4hP4V+1ioYFyBrNAu8xDnMOTdqnH2En0NzZkjGNCqK2/sfV2+u33XKBfqI8qgBGhtqO/XKEpLQzLNSbtcnFEPGOyzbnDTrUPb5BoMz2aD3MwOB2VFxuk+mtG7IT6QeNE/5gGyTRRurDY1DuGwNePnBjoHpMoyMDe1986JNn0nElKqG1KbjK4fiUvODWQZWbaGPrFTL9vsyQcWhSSF0qWCbRLvTcxVsBC7SjWP154cAdX29SEokZcV8MY0K9UesSlT2mGRFa4amKLDwZWmqGylMd1sRMLTXxiO7ATUvdRlPkRvsLaArFn1T9pVvt4pixuCcFbZUgIeCdyJzOhJ225zUYQvplWQS8+FJZON3ejIlI0BQZHJRNKGeIc5MOIzTPLbySub95q/ThlCF2gp+u6o98yhtJkUeBNNoXNNNVReP40kF5AyJ8i9b3pgXsrSQayfLLitNMk3nS3xb7dJXVH82UOTVOYI5akQONLU+6gZ4Yd0UAnTiA9XMlpYEdKsTNJLTWqGEeOdfGOEPbxoECYcAP9CFF8RSu/HZGfphT3Jm18xBeTwD4hFUmFuFnON5TzSSC76Rh9ubWOk7xITLVXiSc0w8BN7uv1CfJ0PkWqYj8mSVX8UygZJqXJuBjxMhZp4pM8zojSxhM+3U0hGKEphIsE7yMlAPgffHobScpduBJJT2Do0+tUsuL7nExivF1JIJ3v7fH/SNKbT5fkexzgTo3zpLVRF5dNu9ieJpBBpaDKdonExPbJdNhkUnkCrg9bzQTTH62a73MNERpJ9tM9auN95+SJ2cDxzan9fi1eEn8yrlFLK0nC0ZrVE/B+6mqn4viM1ZNEyg0cH7caCdz95Oio8T7Hp53G+1wfQ1oppj90NBJwfG1ovs+xOtBIwPOVoJmAb6W+lUa8aPGtJzeScKwVt9+XKYdRDATbOp4F52aC6cXkxvsJCA55KGY9x0pt832OxdJGAo51xeb7ZDFCKIl4seJalGuk4Flwaybg20zTSMOzTlYlQDMyW6T7wd0666O5OnWWwHWE3sdAQu/jXkooQdlLCabCvZRQEtzXiCTAfY3I+1DQVUVfI5ZicONgfwLc1wi9jyuGSALS1wgloH2NWBrxAkL7GpEkuK8Reb/oNERSkE5DKEEyuerWeD8RLIKkAxBJQBt0kSTieVc06CIp7kXLLWmcJxIkAEfIIKfOcMrqdNGePEugD/H+cfYzWXF/xMcXjuSrHvnt1HSxpQNPV4rPIhYT91j8Fv/GTmPoeIfpFdK21GJNBP8sn5IdGibL+jZeWpkcz4wIO0CQ5YmSiOAwObAYSV0GpxNIH/v50QutGJw5UUiHBGktozrnGPPkXpOS4lQk+7Eoa4LlV0CwLmJsf+FpA4J1e6EuU4qzcT61c2BVjnNCpiBnEmWRE/nW3ofFU44dGEMyPAjh6/Pd9uqy+GX1s6zE3x/APeUi/5ySk0KUZ1721Di3WD90l+Yx3phMTzHQv86KL8Nn+IIwH9K4A7o04ZE8QKUITC+JCsl0nEC/THzVsm6hRwOg+CIrE0J3V9cmxF6hEYB2seVjbWLxQIgu3IHpb7syYqEzOToWEluepXUmB6BycoPpQaSUYFQotMolX7CzJIqfbHbsSbd8VtpkxbJGnU7UqViv/Vy6NHPK51wnGFaTAhohu2gyC6HF4ewATq8A8gqO873vOewXVbxhHbKxW1hEZnz8PEbFJcxsvLiI+z7TergG2lI6wmMterku6dUjzm80IsJTyFYSbRfGMHRh6HBsruJRUWt3a8VTQ7lnNasna6mfAATuPJqKa/Dm0XXi+MyqR5NKtzOmqKofGqV364cZ4SOHnaVFky3BGmUOVedJFSTSmFULpFLtlOnEVplsG7iE4YBVmkRxfFLllITDXmkS5esTFd5PL7D1iSr3K7XChKVbmQLRIw0HE9MmjIQc0ybN1yqN5ACnKBaPh+Uk+5k3B4fS22nmFoH4atG+5KXxfPieFsLzoXNAiqfIQrOpdK9o9rTS41MvIDnCDPt5+qPWpLhmbqlK4/l0NC2E5ysGkxLEeTnRj7nbV5yKTdjiyS8/LFUjwhTT2njIq39aUrF9U0WepwONOqkpScpdfZKokfrk4X1+6blAg9ons+U4fKfYPY6wxenAKp5htQeePZGW4akJKXevlzI4/TMmg3ib50MotzA1NK8ljttP5NNsmVnFMaCRSEV8AuIkcnAYYODwLZQ3RDH31Fh4vdInoMXCKSp3oQ+emFnFT7x20LQUg6YV09tIS4LjXAdkI/Ftv5jqGw0L1YZP9OAd/NnmEf1TOBWJBimSkh1XOKI0Q44aTpXZ8sno1j16pYKMEN+fGLGNJa4FaxwLQzQmglz6oIBQpB+rtWOpR9faxhJO7G8bSUoC58nlOEkqW8qKqM+4zMgaTeNG1wocXolJBmOjTcpi4QODCNV1DWxoQCuf9HjKvPCojaUvJrS4EALDNrEUR0xdeJCGKsOEYksTHHrUlZaFWm0Xjpz4nEwvXXE90vgNxGAXk+KcQBhiF0d56GKnqMgqItbK5A9L3xsIXkzKWBB4MUlUArJHKrm/Q5VIRX8MHhJN2RyjZiZykVeQOF1yNGClT6EjnB7vAKkdYv/15gY/qkJjD+yfExZE7nVQlka7u8pdaJiA131dfsnsPGZ3uDEwrhwTUWt1xFOXnYxk0rLJFEw/0ODJSBlq8KRkdRosGSn9DZaMpEaLIyNgoMWREtXT4qjK0YBVb3H608vfJatPWH9bOHkBMfsZDI7a+EUk3tCJMH4ZabjVIeMh8QYXobgF4Qjd10MbDfmleMfhQBD8UvDlUGOBNrglOSCAvq+eVXiDlKqIE0D/7c71yIkjf2g2LyAJTs2s+WUV+whUpQSDp8j4ZZD559lu86guiYzX41S9+ETkkoiMrGMqC8sS200GT+1yyxn7jiAgRLkpdU/KdQs67lDwAhEZ6hkNnb/E4E45i/E+T1URxXZGZTH4bIqqkKN663m6c4dmmfwy8PZsHTWn97YveWmuuoShGOz8Ioqh1j4/HPD+Mx2jrBB/io6cOzgYx5xflJdm9t2DqpjIU3Z1PHj2ml/EULwUAQlOuh06UiMkRbncsG80uuRo6SFLYTiFsjA00tpenKt7qvhYbONTMoM3wPBLS4EW6xIPlWh3e608LE3UO098KkWDjN3VtQYpV+oVLE2VsyfFeybReF+5ShBBZIye5mi2qFz+iLwouvO0kGUe7iZUJWWnBAJ3ONofvyAv0CBl/Asgt5jHq/M3OmTYTqJcHKkc5Zwq5KTSA0vU+lmjx10EJNj00rlib3KqUjl6hKJWP/Ayb/jQsojQ0TA8YoJUBq41QTznOqTkkfX7VG+etIVrzRskMZHuAWtyVAdUNVEpHD/NIyTL+12Lm9IsyR0dRXjs27uInNGTYYOCSISK5MkaPuc5mZQulSqlLsIah4M72qbFhHaQS6cePjY6nXTs3BFnavshAUPnYYVEyJo/fMxoOq1Ui1mlrq8nSiPUhCiXpLa0e5B6gwEHpqWxNU5J28iCoHRa6UKFkrIQJQoSWFaMnHnnlKOWCWwJUdYUeqAaTaB9LTIkzaiW/SQhgqGzmBwplRqYIE4lh1Z1CVJLuHUBeFYlPoioS0BDo8HLAyYFxMAdCTI8nfxOKQ/iO6nPq2VyNpyTLEHNpSxZISkoT+/73vAp5klBCRKEGiX7BP0YDkbfnBRDFnokEegCj2xqvGxRuECWPWUB1FWdgLczeIPBWLnSo5+3F8rtfCXpDj5J21OtvhR5EwCPHSjAv0DjlMCt/WR7wfF8E4fH1rNtz7Ndz7OLnmeXPc+uimf4dvmA3FL//eXb7y9/bF1d/+Ix8MP0LX1KLrs/ZVn81rIeHh42xZ6UDWqKka+sL8VLG7w7FuI3X9DJPkmGL70nDz2X/Jw7m0LvJoVZHm/KE9C35Ed8n0y16xa1skfHIcljN2jI+8P378n37+GLFz+SSQwJsvUiBhkeKpAXN/8D/2nR9360Whb+gfiFkiIfYLl//+Fv2FVBdA9R1rw9AD+F1UvvH8lkKUW/+Y//rB4Xl+KUT1fhVBoOHrkUb9FOn7dXv79kcRE3TlJtxkqcFZXi3GHpl3X1f7784eXth09fPn64+fDt3+3bb7+9+/DZ/vLu0+3Lty9//CPyx/fvL+hC7E/fX243599foicwdCLcVKFHv3375ez195d/RGqxXqSY6kWvhSCAP3WNvyFDMuqAL1Ga/QnvV+r3BNZG7/t5unXQ30geU/Cy1IleQv/9GCNZZO/TbQbjPyAPNH4uAZlnyicvTFkKYrwZdp99gunppiiH6lYeIh8NJyultLR3XmSve6i0ly9Xe2VdhwzL0a/KgluUNfyIHBwBGXTLh5a49JO89B+twsr2Y7oA9QVkJ/RjnnhYaZa7XvSW5apV+sNaMsvXkd14z6/t7rVnNJP7XzKLNbRclnnK3DFWBIsudbAEtt7eZ/j9gbeHSxc9tGqzc1WPTxvsqP7ChR6SO2zwEzJgGCrH/PruzaorfJjTaJ/MR7MYx25I0mDfQCUeLAlYv2hpQF0JG8TVBRgFb/dqncOGitq7Ch53V8VFSnZ6yjM3egiLcB0GdTZuUUNdVng+p7KtKWWtC66M6KivCBlzWSdukzlV1aE0gzoikJCanCWRb0oPvh+UlrE4wZEZDOrxo+NcWdI9t6q/sNFLDU2aNHJ61mx7Y7AU0EsIDFpSxV4xp6QZmGeeNo2EaDOkqrj80qAhjaj3JstXddvxLI1N78Fr3eqaEcnseycKZipzkFyOaK6BoyE85jDlZLD6pO17Q8yoad4s7hz0ayBX7JDTsLSHM575LOYKPhBqcsLQOUMjq0FlIYatBHRk8ie22NxXTUY1MVxkTSh3vsEAf2yGSy/51VtzIwu8pXCFxb9B4WSOwCZvLIqEbi2oW/VZtB+8D9KIJd3WwJwacwv52pm/fntv37BvuKkJl5RfiG2UxcCPjiaU9ITFNpAH8B6bcQKh6xcbiMwqMGBBOdIrdBjJ8I4Ok3aQHPfIXk3HsDlEVTFCrhQat62tULeFzYGLTfs2E45saSL3HJC9YAZ1tqPmmqlYneVHkyY1V1KMlsQhVbqtIkPiBD/b+O5/xU+YPLuolIasre1vvN8K2XbNie9DrVTvSGc8mmYg5W0ROukj2KccyQeEVFHZuGUM4ZBdTIJS+itTEZ+Y3B2Jczem1bU9GeyUT5RlVeDgwrFWzUv1EHQFrdWrauwDJa8JGeqI8ngeG3p1iRkx+kmRuwh8KNoOHWWgMubiYnfYnu8uj/52d0VbU51epNDWiEYNBaKSXlwyP4cdpSbN/MXdNzPgF4o00x/s2AvTmSyolOm3IkqyGc1g2vTa4RS3H5k3gSrSTJ88ReXlCzPYUFen3RJ6oH4WM6guzTak5RzCtAVUk15+vCxDwx6aN6GmTLMVAUDCUyfxUCbPVDG6OrXblMC/zmYL1aXXBjhXSwtNtLQwC2aiLxTppT/EOTzNw1+q0mvBMXaSmUZ9pSrdFngzNa1Mk35+e6Z5Q6VLrw3ebqYyRBVppnfBXPhUk15+H3Ut8/AzTfr5bWemdrSmTLMVEA0ey++ppq2olBmxAscMndUSptCMNbMVroY+M7ak2by2FPp02zLj7LqmTLcV7IrYOYxguvTaEKQzdX1UkV762Aln8j/TpJk/mWmhjyrSTj9by1rp0m9D6h1DBD2fITWFeq1J5loLSEysBSRRkIG9P9MQqq5Nsx34ktx5bKCa9PPbc5pgG7MigTP1D3Vteu1I56rTqYk6PeM4z9Aojx5ymqk61LVptiMJjzPZQDXp5SdbAOcxoFSl14L72daZ7o2sM2GpdhTPtNZU16bXjgc3mqkmME36+dGEZKaRd12bDjsCuk3dJH1dh45NX53NZObYe3UZ3fPF/TrHizyvdAO34MhbMhslvdAR2CDZOXCTRYEn1yAXyOxq60oQbz71nHmgNywqojAx8iDFyXEdXikFycNUcXIVYSpB8jBplniSQ6gmTCVIAcb3JBeCWyxMjopfQJbLrZ60/cIETcPwN1rtRiNNlBqNolTL7PmlxtLLoStByiVSHaYSpFoiNbAwOSYLQRZFvnMCHk+3o6EcDfmsiOCk4rTSEOa+SiR3VgoOF1R64XFH2Ak8emrtfeUP2qh0JAuOpYbyTD+jDrij4+AQQ/Ssj1bIrmjtBczQAHMfRZkf4XD3MoPMZrgT2a6jKUWqxldmWE1pVle4ybYTxJ6sFxqhNdSd4FkdgZL9VzPmR5pFCTjqB6wLlgStRwmoZblMRW+RDktW8Cm5psKJJJuiHl82BOrIbF1gDYFaSmEMklRy7Xy0EFZytVYW7Zw1wQqgCUwhPjkuuf++h7ApUUtLK9OrFbfAyfRoxUnmZUe+BYNUC1sYbhUS2LC3kqc6hGoc99YH2BH7nIbnlFqmAjWdQceSlTy9uaUNsCN2ibHuUMXHIcOWrb1lXE6V+kGEsOrRkPicqkYFrlD4ClfQsteQ+FzmWDefbj/cynRGN/imEunCLHcwvZWLTpB6xa20ni854CLmW9iW8kNOV6pSW1eIq10/rY+xJlQJMfudXcOri68pUYP/jpL7OAZ9d5TZqtFGw4EgneBSG1lNnhJYEOc2SIL7V7rIGgKfS9NGrymQadxqAdnk2zg9vVQnMpxMllJXWDVxVa/Vp0F1eNeONm+SmsnXySx7OJcTWepI7nQAX5PITL5OZt8ws2+AObyX3HvAyczkzzWW1jOtaN0tkW6lJhh9LirnGb0qNNd5w+CVBt013zB4TYXu+m+Y3DdDTmqpQWwmf0XLFyyw57IrGIxCyflMCPN8XahqKSnjnyYwA8kRZnaaIRIjvD06tOEjiUWw++LCUxP0HRXa4MmZSyPMTLI+1NQcayoIu4Z1ubIuqoyxSpfQAVZdqKEaYgK3q0JvDTHCLHfeuYPqmWPtEa25OptxrOjplhkGBUGcL7wTL86VGk+UvtyBV4h6To0lRlYpa9h6tpctFlqSmKFsNaKfL1vKGihK5a0hiZW8jnjV5qgZOJ58mDJMXSnRy34Cvp2eq04SOfgbipT7rqbsOPHu8WU+KlW1z4QRPc+pFWsWf31Ooi1bR7yJ2mWWulKit2Rqx+6Rv6IepTijt2xXQs8J1m6jkvN+IafcpdSUqrw7pxAXJ5GDr70F5L5Y/bhd+c+p2ar7XKUeUdewHUxNqWZyUjtuV/6aqn155+3CVb/kUKtKpZjq6FVdsHKRqa4IxoMiEqvGFG9Dg2Zws55uqlDulpuC1Spom7pP+rNqaKvirckv5SHaumCNeaiXsy15RU1r7kIfPC3brBYMShW9EMEqeSVQtUUqJJGtU9cB2XN2q5myJfs5VWvqZpWqQj1Cq3Ml8LlsUYOBm9xLbVAjN9IvWO8KAKlKR4y2CgGkMFeynk3xpcgyZbdhPi65lawVNezcwV1MeRhKnz4sHFwLUQGFzx2a9y+O6E+OzCV5rLDHVLkeNzgUqnNDDqnVHcnPpnI3yeWLYNMnuCR2JK+oRIb3wdDNmnMURKy+vKu9qLw2cbrcFK7IASyUFMZx6UrDPCIaTwYPPigvT1eHbUhUB8Q7u7WxMWHPpkbXs1+hQhMv4HrclqecP7qgtMBIr0D0eUlwvYGnimlEqyRqqmK62JiwuaqY7+3VqhgSQMBvPl2SyShQcwQSZ/WIfD4TOz6H6oxyBoPiflm5Vh47HDfwNSmS0RuwBFduybiJ4Yptge5Q4CtGlSmoEAWKKJGLSNPEoFIUOMrLStVh6qKUiPC9ozpwqBwFFnyDqDoJlSLP4e7lduo0MKgQeQqoo+ZA1ZpTXDyozFGKUSGR3MHfAhHbo9/lwNfoKWNQIQoUOEq5OgaVIs9BbrVT5mBSFDjopW7qKJUgFRpNrXxNkAqN9FmMFozoyYsuC77KShmECpGniGKgY5BWipEnIXdjKYMwKQociVxgxSZGwhlAcYgi0dHnJap9nvRuiyaG4I6KLkexr0edpJIjz6KpPdPQmskf1mqQiB/M6pDca+mD75X7YHJThjIHk2Iy/KnCpQNsTiy3uIPtJJ+hKilqM2t1DLGAGT2zpZOnwRtMitoMXx1DLBhHLwWJFwVk15abMDVZ0lHdPVuLd5qCFEqt/OUUzYKrejcFkrGXvPOgAbLnve9gsMzI35DRLC+qF2Tg0QIIDnmooV2pCVLo2RRCpTVoJMKjDazeacilRCUebmPJTR2mLkp59U4HDpWjyqKvEW6LU1xXVAeiUtTWFZUxqBC1dUVlCsHgWUPrisocpRjFdUUNIJ5i/cFLgsoYVIjiuqI6huAdigPrisocTIr6uqI6SiVIfV1RA42G3oeuB2qAEQ0B0b+uqAxChShRaOsAm7JU1zqVcUoximudyiBMitpapzpGojj7kL1vvjnaV+2Hpe9bb2II3qXes9apwxuCt3APrriqg5RyVFdclVE0tPPy8XQaJOKxc/pXXNUnpcqjE+lbkBsc/DccG4vO7CDWjOfsWM+BXtI7RSEMVfbO+3awh27mp3aax3GU8MsakFjE6RKU0pvPhaSzIiTkGXAc6MMEKJzdLpxt1T1ndR1gFXqtcfWCWyXFdiYOZZbw/vJev5KrdrMkip/sE0jcByC5N4vbofSwXp9SMTcOmUMVzmJFTZcGeLrKAiSv1ROCb+rSBw8duU/5MvBUlwZ4psRxZOOoCtC3lOnEDyS/gcrxB2LfSjkMSE9y+5ek+KmyJRpv8fMbU62d0U6QRcSrdGnIc9T02EDy9IkQeU2RjnbOCebBrinSgY0q60zcNU06evQT2M4DXtekB3x3dT0bek2XHvir7W42+JouDfDHuaroUbaKih5OUr3SwrfjFNjcF22OC9M18fAIVJaEsqE4B3KqMrWKCllTpGWW4bFPolgq1Wbcin6Vmuyp9KmE4hPLkpY+/ZbQzSAz2lJp1GRNCtm+DduFMQxdGDqyF6+L2DSiV99ssYiKGUDJbde89vRq090OgDCNQYKEl0XBi09ztgojAMZtPcme9Ndj6UkqLICEndon2EJm6ptwj+sBELgLmsnUP6+ZeTtYe773PTlZAzlGnHgP/Bxqnu7XMgePagtyq6NQqtjJZMp0ia0GQCYdMazS2EjFtDm9Gg2PVEzbNKLXyEjFpD292sy193hzMv6IZT6TppSbszF7imcohGOKV782kERZ5EQ+NWJNCwRNMpUACcOZ2dRRTeoGdetq/ZsKNBdRPqvWUzwN7apIAHKazJaKBHi+LRIESDViZG85wRRSBYPYbTEjWPBHJk4pthMRGhzkdmYNczGR6mzFoSgbJkmEhzmuZPM/gtqvQZ1cvq8agZXth3r4DhBkeaIfsS53rgBfrCVU7e72yEsaujviByRLh2uZaRaSZ9UFLzKjhhC+Pt9try61uakSqdVblVirR80Svvv9AdzrK11EmlaPEYlWU/g6hhMDDsUnrFUrPDwkFzs9i0RE1ONx+6hvnYhkBjbTTmPoeAdPbo9uu7FGAi1Ca5XMVr+q2ZaJZi46IM+iIxQfz3XjShK/JdCHINVSuZlIljM7HBySKZCKO9nKfWq61WK3JhWvui2I/fzoKednDM6cKKQLUOlqmwU0JSRZlWfojxjYaNp4r2ccV7jRavqh1koMa152QRmjVMBFGZZaWeDyx5A2DWsJpU/nsKGlSBN+xzPGyuWQNo35UEy45jCkT5uBAmXcBml8PaPsWvOUeZr25TZkaqySDblWnyI9pyiaYvWVgAn+1cwfVJcjx3/ZGVvG47MS+bXF7gVlyNXya5oIlC5+qa1rVnJEyhZKxZaNsBlWJcVqClRa6UKFUjteR+Zcq1xY6z7Psii04wSmogPUnmyrSxNp2Pq8U5fVeaB8z0dHoGJejtPOnKl+JHqussc7vliswj6nIBFWTZRyhvlih3mnkDQ1BpqomtKey90N+yyA6Umms1G9NK3QbB+Ak0XJk43qGVTseFAO9AkVrQWFDJbHfRKtEU2qJbJXrmDxVLBgxpaO6j/CECaeY+/FV8wGvVeXqSX76wKtYT3Pptb7OcyiKFuk4qdeEPvQFrujfCjD68KEc5p5gWV2XZjVI1y1bjfkidZpIdg19kBi0yauT7h6C7bCdUR4+80+s4F7j+YAXkq2YOKoEkKrA9WXXZbVbGfPkGiFkLl7fDVgGEKyTU87ba9oNVr3Cf2M2tojyDJ3r514ULwatb9zQKwdti1VjTEGD4nJojssX5Eb9b2Ri/IMydYP3S9cH7Exb4/qUONPn0JHO3BLqGKbdgKo5UG9YZSHrhce9bdswwqkyYkXMuDciR/PHGLtilSiK+OCRGEGH/Uh9shV4SSDct/b6+Kry1PmQhXRRXMssVODU3B1oSu9UKIaEqB6gi+SFfs03fUA25ffFarWdnQbTG2cvaJ1j950erUr2sToTRvxoHiNozdtsG2pRkZv2miH5esfvemD7hdubPRmBFy3x+sDLW3ALaFmRm/6WrZhBWrktOFBHZE+2KZMDaNLjd7sE6pE6Pu68RoSFdiOIBbbJTEMxUQpeUofTilLlYfGT/f2nu9lTzrpupJ1zbL01gImUolO/IjQGJjw2SCumZ8uuh65SpwyNymN8alfqFSbpGkvdT1ilSk1tit1ecpcOhvglkRltkbrhGO4JJG2CjyqQJ0cN65aG5wescqUAQzwt2m9I4N+yeqskYtHlvS4DAkgrm+1g0eJsgXsc3ahxFAJGVOiZe1PJyyVp2/tT2v7XxOqwXPHU4ZnREYzf1SLsg1I/b2He22sIYFOlLh68YcUmFx5RS6SX3lF4JtHIkHBByi9VRelmk8aiWriTOaBUqyI9798vdh9+nW7+6J6Hu3XmxtNZwpLVwodIexmBN79X9lnIUCrLV3DmYW6SJtkuVHqUoUmdDocrhb00HwHh7JyzZgxqu6/4gkMdg+J4FaiCCWbfRuRTdQKfwdmJlokefmNsCFLodkmcvBMPYn84gZOTWxtmav9hNnkFRlUtMxnA4q2ONXcEV1dGMPiX1IwtD+VO5r5wK1UeXF/kx3hYIjpA3/YMw0Bz7oZ5ERCh2nKnKFh6PpNYvWICp9r07Z4DNV+f8iU1HF/0BLsCK6PaOyyBlwWPO6u7IMP8IztlGdu9KCyeVqiPPZcBddFKm4N1HVzTVe+Sg3oEVfe0jVkycAvjcceXqKCrSODFap0Xwazi4lEM/i/6DHjybO/nRTZyUN9fYxcKXUvJf2AI9+UkQgzCY/ukbIoeKEeObFXM5xdGGZRGEvq0rzuNVJamaQuk2szCV9YMI0leQVBL5n9kACh2wU58Uq5aoyCdwNMw0mF+29RCd7HOAkldedil4lFAdKMVhOrSOgKXWfBweZKXFDRviVR6FKGSaZA5pKFJtHeO4a53oasEqmWg8X9snozsZKpg82OI983AVgKVmvPssR2k73QsYjpNq0mVInuhG8Z1I7XkKp2kvMEtlrRmEBVqt3VtW4uKlKttEVhmgEcNd8LhI5jTxe5tmQlzuyUQIB3hWplbEhV4mPhl7Ti1YVqoSMBn4wglpLV+rXQDnKhFdzpfq0UqaHHtb0wg0kINCN2ZWsbtevkbMlVbHdE793haHDkLtYZaxHNZPiwCq3k9yD1xAJPC5NXKpRnJswNolfIcs1P2sI10BrwbluwvtGuVsqWYMW5lf52qiZTjS1OJe4Hm8ZriFUmJJdhaAcspSrz4RGW2OY6LsBKrDJhlgBHb0VuSFUbuQHXj5w7rXQ1mWpsd/rrbk2mIttD4mV6c7UmU+1KlxTgfsg+QT+GidD31knGHtlqM9fUt124z49GaHulK/M6vid4XyAXaCVWmTDwUqHrIbj4mFBlOiR4e2FmhNMvXhPxHXzSXzybotXaJFQ32aV2RVnSOhPvkz7j1hM/d8VjBCp+txxxNhDbHT/oXmpZ+TPQdsMpSDxgBpEK1sGYhlszjFSwJkZ9nX0fqGS330uLw1FeC92fxY1aidbBWXwPMsJZitbBmXs+3hV5ELrIk5+1IV4Dr4P+8n1DNb8uXAerY6YAULk6CE8A/bc7N4NZE66NNY58oUP4grRMvBZeKBWXQoAYSsWoGGMu9r0YoS1F6+DEe0yMUFLBOhjJ8eaz3ebRDGlDvBZeEm8MjYMN8dbF6+GtfSA1hNzUoIOa7SQwAlwTroGVLC0YAS0la6E0M1ORuh25n/BkZhxA5WogJPu8TCAywXoYDTVNpWQtlH+JwZ2Z9qgmWwupnqXnLqXE8nM/Id24ZoSykq2DVNtHpA6n3IekXsqjofnIUdt85HTnCgWZ40ZkgnUwlpvtjIDWpWugrcWiMjUP6arQwe2aYXW18V0ZArzSRVhEAdrnhwNMbOD7kZkp04AeDRaEMLPTyLmDmZkRXku+DmIvzey7BzO0lWwNpJFnpoJRuRoIY2imt6JydRDq2VfQAZTYWjDA56RboXtwBRiZaE2cZlrTUrIOSrab2AhoTbhGVnNrIx0NOqnJZmij1EyDDurIf9penBsqwDXhOlgT7x5k0AaOI3ixKD9xR4UO7hQYLBQ14RpYEw/1MO722sxHlYZ0HbSG1lQSbSsq5ASRCUQmWA8jPk1kiJKK1sN5ZWhEUInWwZmaqepUrh5C2wHOyUzv2pCui5Z8gEtzLzO0YN6nRBd7FN15Bl1ditfEm3l4VmmMtxKvgbc6xGcCtyFdB60XGEMtRWvglIjZzg0qEb99hPTx6vyNEUwmWBOj7SRmOoW6cH2sZmp/Xbg21tTMp4u6cKNhi5hp7Wt2U6BjJ2yxKVirhxCZVYnVsaug2LiMd9tlXkgi60ep9o6+wh7QpN8SNJsMvMy7N29JU5M+S4p9OqboK+k6ibV/KmoQ69yvVsgsQq3pPGzYA95RYoCf3BeTzlB/xzWas8x8fR7XqM8yJDzRu3RSM6IUro/XyPJ1DVnzCjaVmkKaoaawGwo0cnu/myvipXCNvFmSO8Z6qUq6PmLhCzxEgIXv7ZjmvQd+bg64kv6PESCUebId/tXzPdSy2z7Y85xy60uPUqLOYSJi/qgQuuEhACE4ckXyHikc+NxpsWVC9Cxj3RVWzS6riWc1NKidFC0liRZicVaBgrx00Nqhx61TdvFkQEuc4K1189b6LYVJan1L8vB49hGg6h1bt14QIx962dMtca51f2U/RMldGgMHufG43VUX+CBHUm1tF7Z3CAFvMna1RiimboIKs08UMM2e6ilsnTYc4m+ae9/Gz9PNHmSzEfbqFuRN53Non+oJWrxCjMMhBcfzTRweZ0Pt6OXm3C7EuRXk3C3EuRPkvFiI80KQ83IhzktBzquFOK8EODeBOzMh0dhho6PpLyA7mVDNqZGNmVDSv0Ans47QuUMTJ/fOvtzsNhflziXrHbz3kJ7bYkj1EY+oahdlfWCBJLQoRZ0jDQtYjOPQzzZIkUv6eiBdCvZ5lkV4PRamqUE1ftRXUJWyhqog11zokdx7aaMm4d1bknT7Y4+I/QjHGTMn2eq9IFG6lBQ3zLGcpPfNHYCT4WkKKpFQV8kvTaHXhBSl3kQu3Hy6/XBr3eDplt7Wgf/yIkM+I6dITchHLRxpZF3S1pI7w0yogYGb3FtuAPBfxuTrb5Uq+fiaRmPg+OI8Eng0yWMj/mfZ7EVphkYIgRkdDkqRPRX3dwUxGhOExf0+9NRUmsdxlGS09iymXp/pU8uWptWUd++YKSxBnJvohBVuizJT+8L74MJkpYujB9RBsJW/OWse3u9N3b2cWivO92gEr1t7AvCMJAGej+93p22/YSW1Uaquyj2pyoMQvj7fba8u59L4+wO4N22ec/JiCx6Si13x5+Nx+2jaPj8/eqEVgzPUAdGNhbqmXUI657aY/Iw7ETvOdM0gRD526Jy0lLNDOtZL8RIFJEeztE+9qAqkz3dOwDMysGR9RPqUZtDQsIxq8CGMiZ/m7Qtoq0Ijjlrk6lMzFiIBPngasC4AThK9gwc8w0GV8Hu5RFctKV1c7H7Znu8uf/243V2JiLj9aP/85Yv95evnL++/fvvw/lYw8Z8+//z1nf3nnz+9J2uC5As3+s1/+2seZf/6p6/vLs/Ptz8XP0lJ/vr+//QI/vn8Qlzm/0Ty/u3nr++p5Hfvf/n5t4/f7K+/2H/6+c/v7B1CVRB3+9uXL5+/fru1t0yiDmGycDw5s73eyeXMzedPXz7/+f2fv9k3P3/7+ePnX1HxeX+LfhaR8+lP7999+3iLhP35lw+/2r98+Nji9LN/rc2A2IbEP8jo+HL7s33z9d+/fPts33z8IAlaFzLCXI9QLMOM/Pv15w8f7Y8f/mR/QuXzA6qa3z7ffP7ICkVDo2ihIKJ/+4b++PIzM+N/vv/53fuvfc6v9b5g1Bo6m/ul+ICgfXWeY8UVjxlqK+y/3tzgR+XvN+A5Utt4YfN5oRdrscBFA8bMQxx4kyQMXeiuwoyeyTO2A/0P/9u++XRpHx1nVaitcTHIs+gIw2L9BD1LoA9BCsuf2fh8hw1hv+UwqAw+1TcA6X2V+8WA98UwQkPJnpfxKPZzTNsy/MMH/CGyerrJnU050iXtWESej722ceK80eShwX8GH8+CvqmqEYBDC+AQ31+epfFs6v0IZDbYew2INDpkB1kGPHhGGZqMI7C3NnECy8XG/q1cOOFHL81KxSWmT4p3JaF3d5BVKZYxB39DDfaT9pSvrd4g8g1/wpriHfrXrZN4cdYoIP/EpjRVQ4TfxC3hxu/7cG+g4Bzy0CFfr9DMLStWQmqEWZL3rQAZ4HBBBrQzCGRSCEI0yMTdwlIeiAIvsw8Jar7tuPgKtBBIiE9jODBesjgghiTLvAUKAqqHMAEZ/ARi0qMuY79j4zjMLkjcZsf65s1M+h8fBwj+5V+223kYHkASeuEx3QDfXygbSgRyPGlpiBi6IMw8pznUKfaQzZshCSzu+0uXQsFvBN7vZONFc9Dl/c6PEIA7SHpbkAQbPFnJQHKEWZth4LXOsPcsQE9+Eh/8KmJkpzzYt0Dos3kA2qPvswA9+YmOwc/c7fVsIL3jcISDn5+h5z8Jjsk7iqoGcpKpenWoNT9LM/cnkSZ9REccCwDhsxJDDXwBJdTKa8bq6/vPDmF0VjxdDGpgUETQ6r+bt2yxRtlu95Jn/0aezO8u80RS/ul24Wf/Rp8t6COjVCJ+GuxRzz5rKdOiHjLNI+Kb4cnp2QH/7qz63fyOmhVOxGvjSwtnB/b7Rb23CKRQvRxfFjg74BfOyAtn5QsLVNdlMEU8ub4lRY3+fwbGDa4BD7/5HMzqX1saeG14MVhtDViRiqx+dtY+z9D0DTrpT/i3G/LPuXjYIpxd/GwHIG6S/V8q7/uLs08g/umf/vvn3759+e2b/e7D13+2/um/f/n6+X+9v/mGN2z884Yk5uQuNhttPFRa6OJ8G5mekIji5qiEfCvEXyLji4vdAW8fOvr924fUHOaljnBNOPs3/4ezs6Mz1ofpa7v0IHMUvUkZfWcL5O08RWm2jKHi0AhxU2zEJEU59S52BbqbbYrdmC65p5Z8w9wcw3xT607wrcBt22oCW28XL23IXfJRdoKJj8xcJr8Hw32MpDkEME2RP858GB6z0099m4DmcD9eZhDJgPr7/z8LlEYfUtX2Ef1Qijx78LLTGRmzLVN3abc5UXBExTle4uQ+SFwY421HofMk/wVkPVaFqB13O2MdsW8XchW8v0tXkSWaRT+yXdTlkxc//vEx8HGS4lQCSrTdnBMhSFqE41ijR799++Xs9feXf6wEsdFRueEodzZB5OaoxqUwy+ONCw8g97NbmGXkm1F7l9aGbI9C6dGzGCbZ062D/v4J39hBx12Wecjc+VK8IoHXLintoFl0QD/UtDQDRGycxGG7Qp2k0EzjtJbZiB6xcbE7XP3asZm6Wf7yh5e3Hz59+fjh5sO3f7dvv/327sPn2qb1l29f/g21ii1/fH/59jt6/h0NkcE9dG+zyLn7PyDxAGr/Uvz4Lf4Dv4D/DxXq2ENvuXcfI6dYwqO/eMv+0dqkxx7/wP6Bjzh+jrvphgba9Nd/L/5Acl6+K0qgILmk3pJb2nJG/neUP4UQvP8gRdnxH3/DiWjOI0E4538oSyI5LIFtZDNINPGF9zDM7BMIXb+I84hejxLv6IXAp++Hue//UEZtRw+2P5AbpjOUEv109fr1xevt1cX1338Q1s5OF1OAVArg7NXV9fX28vpaC4EjQ7DdXr45v3h9eXGhgoC3jqM/8Mc2R9IX1292l+eXb663yhzk+GyNRs4vuzfIM28uz3faeaRKyvby8s3l6+uLqzcdHtKt9wDxn5BPE6eBncDiY7ONRhFe1O/A7y9vSG0nW5nxP+q7mfHP7Q3N5Nm7/03eLdHwD4wL/5ui4X8yGvIYdRf4rynGQfddXr569fp1X1XX771i6FX2dGt0Xh/icNG7unz15uLq+tJE0aPH4AfIeqvKrM7DJ+xGnXcad96rN+fn5xev3lzyNiOFWBbMaNQRk23GxcXl7s3Fq6vX0hk3EGOJ/W26dCM1+C964B39H4agvyCxnqp/TpTi3es312+uX5vzhOGiKuKJ8SKJurVXry6212/0+wLVkhW5o0Mz4pFr1D3sXncrqYhHpqNMYQf1PZ+pGhWqm37rDYZVOG+EdKTJubxCfcW5fFeh6Ml5yp0OT46Xyes3r853r17t1CrpaAwB7MP6z3OVQsbUdF8jukHhth64IXeh+er59W533p3FmHPXTEVNzl1TpevyYvvq/M0riclNc94tN7m6vr64fLW97BmYTOtvhBhS5Di/RDNwNEaS4aDupoEtFaebuyvU+7y6kpqFD4HIjRnfXL3evbq+uOB2CR2wdkD2WXiuMnzdnaMx2+7160vRoXMfyVZtII1G0mjueL3jXqepjeLrkU/VKC5fXe8uX10IzyU6DlGg2KLB4xZNad7It7QDQTLpNLr4ac5pc4FB2lqimzSn5Zy5wTNcVl9d7XZv3my7q1d6vNLIv/U4pw9rsOTsXm/PtxdohKjbR3QNgVLMuGbQ55xqwaDBMzL32KJpKZqBGPJKM4tW45w+rMGW7/X2NRoxXF1rWIDqC0KK61jjyZwVjACRN+oEtWrWRzbcR7y6PEf91OsrDQ3RQLzWlqtmLFHDrqLlqo9ssOK9vtyeX7057xleqCyD1Hv7zoNFl8saEdh7nk0UrWs8/rk87xkXmnPXkotIk+6aaLPQYPHi/Opq222zJkb0nc/kwmO017vrN7uLVz2DkenJRLFUITeJub7ES4tXMl/MqFqpcfFrvOS03e5k5k5l/D7bARkYXLicGhRfbtEs8vrq4vzv//ny7/8PIjxVKg===END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA