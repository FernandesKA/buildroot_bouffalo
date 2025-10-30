################################################################################
#
# Linux kernel target
#
################################################################################

define LINUX_KERNEL_COPY_POLCD_FIRMWARE
	mkdir -p $(LINUX_DIR)/firmware && cp $(BR2_EXTERNAL_BOUFFALO_BR_PATH)/board/sipeed/m1s_old/polcd-p169h002-ctp.bin $(LINUX_DIR)/firmware/
endef
LINUX_PRE_BUILD_HOOKS += LINUX_KERNEL_COPY_POLCD_FIRMWARE
