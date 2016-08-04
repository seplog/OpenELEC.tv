PKG_NAME="atk"
PKG_VERSION="2.20.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://library.gnome.org/devel/atk/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="accessibility"
PKG_SHORTDESC="ATK - Accessibility Toolkit"
PKG_LONGDESC="ATK provides the set of accessibility interfaces that are implemented by other toolkits and applications. Using the ATK interfaces, accessibility tools have full access to view and control running applications."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --disable-rebuilds \
                           --disable-glibtest \
                           --with-python=$ROOT/$TOOLCHAIN/bin/python2"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

# pre_configure_target() {
#   export CFLAGS="$CFLAGS -fPIC"
# }
