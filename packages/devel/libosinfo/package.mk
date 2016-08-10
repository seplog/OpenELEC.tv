PKG_NAME="libosinfo"
PKG_VERSION="0.3.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://libosinfo.org"
PKG_URL="https://fedorahosted.org/releases/l/i/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain glib libxslt libxml2 libsoup gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="GObject library for managing information about real and virtual OSes"
PKG_LONGDESC="GObject library for managing information about real and virtual OSes"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-tests \
                           --enable-introspection \
                           --disable-vala \
                           --disable-coverage \
                           --with-gnu-ld"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
