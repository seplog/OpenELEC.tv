PKG_NAME="celt"
PKG_VERSION="0.5.1.3"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://www.celt-codec.org/"
PKG_URL="http://downloads.us.xiph.org/releases/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libogg"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="CELT is a very low delay audio codec designed for high-quality communications"
PKG_LONGDESC="CELT is a very low delay audio codec designed for high-quality communications"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-ogg"

PKG_MAKE_OPTS_TARGET="-I$SYSROOT/usr/include"
