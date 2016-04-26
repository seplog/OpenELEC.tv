PKG_NAME="confuse"
PKG_VERSION="3.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="ISC"
PKG_SITE="https://github.com/martinh/libconfuse"
PKG_URL="https://github.com/martinh/libconfuse/releases/download/v$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST=""
PKG_DEPENDS_TARGET="flex libtool"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Small configuration file parser library for C."
PKG_LONGDESC="Small configuration file parser library for C."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_malloc_0_nonnull=yes \
                           --enable-shared \
                           --disable-static \
                           --disable-examples"
