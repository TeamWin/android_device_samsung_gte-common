# Inherit from common
-include device/samsung/msm8916-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gte-common

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msm8916

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE     := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072

#Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# RIL
BOARD_RIL_CLASS    := ../../../device/samsung/gte-common/ril
TARGET_RIL_VARIANT := caf
#override to enable audio.
BOARD_PROVIDES_LIBRIL := false
