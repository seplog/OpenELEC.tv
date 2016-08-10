PKG_NAME="libvirt-python"
PKG_VERSION="2.1.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="http://www.libvirt.org"
PKG_URL="http://libvirt.org/sources/python/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libvirt"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="libvirt Python bindings"
PKG_LONGDESC="libvirt Python bindings"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_MAINTAINER="none"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDSHARED="$CC -shared"
}

make_target() {
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}
