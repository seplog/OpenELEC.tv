PKG_NAME="pygobject"
PKG_VERSION="2.90.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://www.pygtk.org/"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/pygobject/2.90/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain Python glib libffi pycairo"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="pygobject: The Python bindings for GObject"
PKG_LONGDESC="PyGObject provides a convenient wrapper for the GObject+ library for use in Python programs, and takes care of many of the boring details such as managing memory and type casting. When combined with PyGTK, PyORBit and gnome-python, it can be used to write full featured Gnome applications."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-thread --enable-introspection"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

pre_configure_target() {
  export PYTHON_INCLUDES="$($SYSROOT_PREFIX/usr/bin/python2-config --includes)"
}

# post_makeinstall_target() {
#   find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"
#   find $INSTALL/usr/lib -name "*.pyc" -exec rm -rf "{}" ";"
# 
#   rm -rf $INSTALL/usr/bin
#   rm -rf $INSTALL/usr/share/pygobject
# }
