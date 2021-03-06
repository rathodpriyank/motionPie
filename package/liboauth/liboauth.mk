################################################################################
#
# liboauth
#
################################################################################

LIBOAUTH_VERSION = 1.0.3
LIBOAUTH_SITE = http://liboauth.sourceforge.net/pool
LIBOAUTH_INSTALL_STAGING = YES
LIBOAUTH_DEPENDENCIES += host-pkgconf openssl
LIBOAUTH_LICENSE = MIT
LIBOAUTH_LICENSE_FILES = COPYING.MIT

ifeq ($(BR2_PACKAGE_LIBCURL),y)
LIBOAUTH_DEPENDENCIES += libcurl
else
LIBOAUTH_CONF_OPT += --disable-libcurl
endif

$(eval $(autotools-package))
