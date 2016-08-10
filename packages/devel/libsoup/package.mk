PKG_NAME="libsoup"
PKG_VERSION="2.52.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/Projects/libsoup"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.52/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2 sqlite gobject-introspection intltool"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="An HTTP library implementation in C"
PKG_LONGDESC="An HTTP library implementation in C"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --disable-tls-check \
                           --without-gnome \
                           --without-apache-httpd \
                           --enable-introspection \
                           --disable-vala \
                           --with-gnu-ld"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
