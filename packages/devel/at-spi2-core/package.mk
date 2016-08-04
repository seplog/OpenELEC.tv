PKG_NAME="at-spi2-core"
PKG_VERSION="2.20.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="https://wiki.gnome.org/Accessibility"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib dbus libSM libXi libXtst gobject-introspection libX11 intltool gettext systemd"
PKG_PRIORITY="optional"
PKG_SECTION="accessibility"
PKG_SHORTDESC="D-Bus accessibility specifications and registration daemon"
PKG_LONGDESC="D-Bus accessibility specifications and registration daemon"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
