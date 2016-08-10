PKG_NAME="libvirt-glib"
PKG_VERSION="0.2.3"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://libvirt.org/git/?p=libvirt-glib.git"
PKG_URL="ftp://libvirt.org/libvirt/glib/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libxml2 libvirt glib gobject-introspection Python:host intltool"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="GLib and GObject mappings for libvirt"
PKG_LONGDESC="GLib and GObject mappings for libvirt"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-test-coverage \
                           --disable-static \
                           --enable-introspection \
                           --without-python"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

