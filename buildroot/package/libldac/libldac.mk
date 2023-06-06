################################################################################
#
# libldac
#
################################################################################

LIBLDAC_SITE = git@github.com:EHfive/ldacBT.git
LIBLDAC_SITE_METHOD = git
LIBLDAC_VERSION = af2dd23979453bcd1cad7c4086af5fb421a955c5
LIBLDAC_GIT_SUBMODULES = YES
LIBLDAC_INSTALL_STAGING = YES
LIBLDAC_INSTALL_TARGET = YES

$(eval $(cmake-package))
