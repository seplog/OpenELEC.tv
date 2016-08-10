PKG_NAME="pygtk"
PKG_VERSION="2.24.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://www.pygtk.org/"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.24/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain glib pango atk gtk+ pygobject"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="GTK+2 bindings for Python"
PKG_LONGDESC="GTK+2 bindings for Python"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
