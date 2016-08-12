PKG_NAME="certifi"
PKG_VERSION="2016.8.8"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://certifi.io/"
PKG_URL="https://pypi.python.org/packages/41/bf/88a3269c7c95fc94a2c581c4b1b3d3ec21af7a268d6a3a4e54578adccfd6/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Python package for providing Mozilla's CA Bundle"
PKG_LONGDESC="Python package for providing Mozilla's CA Bundle"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

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

post_makeinstall_target() {
  find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"

  rm -rf $INSTALL/usr/bin
}
