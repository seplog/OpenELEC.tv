PKG_NAME="at-spi2-atk"
PKG_VERSION="2.20.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://wiki.gnome.org/Accessibility"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain at-spi2-core atk"
PKG_PRIORITY="optional"
PKG_SECTION="accessibility"
PKG_SHORTDESC="Gtk module for bridging AT-SPI to Atk"
PKG_LONGDESC="Gtk module for bridging AT-SPI to Atk"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="--enable-p2p \
                           --with-gnu-ld"

export LDFLAGS="-Wl,-O1 -Wl,--as-needed"
