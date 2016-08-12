PKG_NAME="urllib3"
PKG_VERSION="1.16"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/shazow/urllib3"
PKG_URL="https://pypi.python.org/packages/3b/f0/e763169124e3f5db0926bc3dbfcd580a105f9ca44cf5d8e6c7a803c9f6b5/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python setuptools:host PySocks certifi six pyOpenSSL ndg_httpsclient pyasn1"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Universal encoding detector"
PKG_LONGDESC="Universal encoding detector"

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
