PKG_NAME="gdk-pixbuf"
PKG_VERSION="2.34.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.acc.umu.se/pub/gnome/sources/gdk-pixbuf/2.34/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libjpeg-turbo libpng jasper tiff"
PKG_PRIORITY="optional"
PKG_SECTION="x11/toolkits"
PKG_SHORTDESC="gdk-pixbuf: a GNOME library for image loading and manipulation."
PKG_LONGDESC="gdk-pixbuf (GdkPixbuf) is a GNOME library for image loading and manipulation. The GdkPixbuf documentation contains both the programmer's guide and the API reference."
PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="gio_can_sniff=yes \
            --disable-gtk-doc \
            --disable-gtk-doc-html \
            --disable-gtk-doc-pdf \
            --disable-man \
            --with-libpng \
            --with-libjpeg \
            --with-libtiff \
            --with-libjasper"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
