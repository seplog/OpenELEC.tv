PKG_NAME="spice"
PKG_VERSION="0.13.1"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://spice-space.org/"
PKG_URL="http://spice-space.org/download/releases/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain glib celt zlib libjpeg-turbo pixman libressl spice-protocol"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="SPICE server"
PKG_LONGDESC="SPICE server"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-gui \
                           --disable-automated-tests"

export CFLAGS="$CFLAGS -UHAVE_AUTOMATED_TESTS"
export LDFLAGS="$LDFLAGS -L$SYSROOT/usr/lib -ljpeg"
