PKG_NAME="pygobject"
PKG_VERSION="3.21.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://www.pygtk.org/"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/pygobject/3.21/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python glib libffi pycairo gnome-common:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="pygobject: The Python bindings for GObject"
PKG_LONGDESC="PyGObject provides a convenient wrapper for the GObject+ library for use in Python programs, and takes care of many of the boring details such as managing memory and type casting. When combined with PyGTK, PyORBit and gnome-python, it can be used to write full featured Gnome applications."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-thread \
                           --enable-introspection \
                           --disable-glibtest \
                           --enable-cairo \
                           --with-gnu-ld \
                           --with-python=$SYSROOT_PREFIX/usr/bin/python"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

export PYCAIRO_CFLAGS="-I$SYSROOT_PREFIX/usr/include/pycairo -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16"
export CAIRO_CFLAGS="-I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"

pre_configure_target() {
  export PYTHON_INCLUDES="$($SYSROOT_PREFIX/usr/bin/python2-config --includes)"
}
