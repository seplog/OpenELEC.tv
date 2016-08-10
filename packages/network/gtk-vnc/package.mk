PKG_NAME="gtk-vnc"
PKG_VERSION="0.5.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="https://wiki.gnome.org/Projects/gtk-vnc"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.5/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libgcrypt gnutls libgpg-error cairo gtk+ libX11 gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="VNC viewer widget for GTK"
PKG_LONGDESC="VNC viewer widget for GTK"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --enable-introspection \
                           --disable-vala \
                           --with-gnu-ld \
                           --with-gtk=3.0 \
                           --without-python \
                           --without-examples \
                           --without-libview \
                           --without-pulseaudio \
                           --without-sasl"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
