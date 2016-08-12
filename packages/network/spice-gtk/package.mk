PKG_NAME="spice-gtk"
PKG_VERSION="0.32"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://spice-space.org"
PKG_URL="http://spice-space.org/download/gtk/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libressl pixman celt gtk+ glib cairo libjpeg-turbo zlib gobject-introspection usbredir libusb spice-protocol" # opus
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="VNC viewer widget for GTK"
PKG_LONGDESC="VNC viewer widget for GTK"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --disable-nls \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-webdav \
                           --enable-epoxy \
                           --disable-pulse \
                           --disable-gstaudio \
                           --disable-smartcard \
                           --enable-usbredir \
                           --disable-polkit \
                           --enable-introspection \
                           --disable-vala \
                           --enable-dbus \
                           --with-gnu-ld \
                           --without-sasl \
                           --with-gtk=3.0 \
                           --without-x11 \
                           --with-python=$SYSROOT_PREFIX/usr/bin/python"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

export CAIRO_CFLAGS="-I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16"
export GTK_CFLAGS="-pthread -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/at-spi2-atk/2.0 -I$SYSROOT_PREFIX/usr/include/at-spi-2.0 -I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/gio-unix-2.0/ -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/harfbuzz -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/atk-1.0 -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"
export SPICE_GTK_CFLAGS="-I$SYSROOT_PREFIX/usr/include/pixman-1    -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include -DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_36   -DGLIB_VERSION_MAX_ALLOWED=GLIB_VERSION_2_36 -pthread -I$SYSROOT_PREFIX/usr/include/gio-unix-2.0/ -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include   -pthread -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/at-spi2-atk/2.0 -I$SYSROOT_PREFIX/usr/include/at-spi-2.0 -I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/gio-unix-2.0/ -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/harfbuzz -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/atk-1.0 -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include -DGDK_VERSION_MIN_REQUIRED=GDK_VERSION_3_12"
