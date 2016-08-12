PKG_NAME="PySocks"
PKG_VERSION="1.5.7"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://pypi.python.org/pypi/PySocks"
PKG_URL="https://pypi.python.org/packages/16/56/9b3513078f837fa8cb88ee01ec1cd805ed8104a37bc02ca8c2588ae8fe5a/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="SOCKS client module"
PKG_LONGDESC="SOCKS client module"

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
