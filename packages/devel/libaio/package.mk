PKG_NAME="libaio"
PKG_VERSION="0.3.110"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="http://lse.sourceforge.net/io/aio.html"
PKG_URL="https://fedorahosted.org/releases/l/i/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Asynchronous input/output library that uses the kernels native interface"
PKG_LONGDESC="Asynchronous input/output library that uses the kernels native interface"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

export CFLAGS="-march=${ARCH/_/-} -mtune=generic -O2 -pipe"

configure_target() {
  : # nop
}

makeinstall_target() {
  make prefix=$INSTALL/usr install
}
