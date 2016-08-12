PKG_NAME="ndg_httpsclient"
PKG_VERSION="0.4.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="https://pypi.python.org/pypi/ndg-httpsclient"
PKG_URL="https://pypi.python.org/packages/a2/a7/ad1c1c48e35dc7545dab1a9c5513f49d5fa3b5015627200d2be27576c2a0/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Provides enhanced HTTPS support for httplib and urllib2 using PyOpenSSL"
PKG_LONGDESC="Provides enhanced HTTPS support for httplib and urllib2 using PyOpenSSL"

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
