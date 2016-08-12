PKG_NAME="six"
PKG_VERSION="1.10.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://pypi.python.org/pypi/six"
PKG_URL="https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Python 2 and 3 compatibility library"
PKG_LONGDESC="Python 2 and 3 compatibility library"

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
