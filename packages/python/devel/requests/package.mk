PKG_NAME="requests"
PKG_VERSION="2.11.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.python.org/pypi/requests"
PKG_URL="https://pypi.python.org/packages/8d/66/649f861f980c0a168dd4cccc4dd0ed8fa5bd6c1bed3bea9a286434632771/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host chardet ndg_httpsclient py pyasn1 pyOpenSSL urllib3"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="HTTP library for human beings"
PKG_LONGDESC="HTTP library for human beings"

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
