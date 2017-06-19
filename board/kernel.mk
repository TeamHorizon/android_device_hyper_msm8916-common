BOARD_DTBTOOL_ARGS := -2

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

# Use Google GCC for arm platforms 
ifeq ($(FORCE_32_BIT),true)
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
endif

ENABLE_CPUSETS := true

TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8916
ifneq ($(FORCE_32_BIT),true)
TARGET_USES_UNCOMPRESSED_KERNEL := true
endif
