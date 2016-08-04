PKG_NAME="gobject-introspection"
PKG_VERSION="1.47.92"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="https://wiki.gnome.org/Projects/GObjectIntrospection"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/gobject-introspection/1.47/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain bison:host flex:host Python:host glib cairo"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Introspection infrastructure for generating gobject library bindings for various languages"
PKG_LONGDESC="Introspection infrastructure for generating gobject library bindings for various languages"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --disable-static \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-doctool \
                           --disable-Bsymbolic \
                           --with-gnu-ld \
                           --with-cairo \
                           --with-python=$ROOT/$TOOLCHAIN/bin/python2"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
