################################################################################
#
# libldacdec
#
################################################################################
LIBLDACDEC_SITE = git@github.com:EHfive/ldacBT.git
LIBLDAC_SITE_METHOD = git
LIBLDACDEC_VERSION = 2c919b9f298d5658cef99c22226f0ae297777f98
LIBLDACDEC_GIT_SUBMODULES = YES
LIBLDACDEC_INSTALL_STAGING = YES
LIBLDACDEC_INSTALL_TARGET = YES

LIBLDACDEC_DEPENDENCIES = libsndfile libsamplerate

define LIBLDACDEC_BUILD_CMDS
  $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
	echo "libldacdec make done"
endef

define LIBLDACDEC_INSTALL_TARGET_CMDS
  $(HOSTLN) -sf $(@D)/libldacdec.so $(@D)/libldacdec.so.1
	$(INSTALL) -D -m 755 $(@D)/libldacdec.so* \
  	$(TARGET_DIR)/usr/lib
	$(INSTALL) -D -m 755 $(@D)/libldac/inc/ldacBT.h $(TARGET_DIR)/usr/include/ldac/ldacBT.h
	echo "libldacdec install done"
endef

$(eval $(generic-package))
