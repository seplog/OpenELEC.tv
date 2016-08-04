PKG_NAME="adwaita-icon-theme"
PKG_VERSION="3.20"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-3"
PKG_SITE="https://git.gnome.org/browse/adwaita-icon-theme/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/3.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain gtk+"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="GNOME default icon theme"
PKG_LONGDESC="GNOME default icon theme"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET=""

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
