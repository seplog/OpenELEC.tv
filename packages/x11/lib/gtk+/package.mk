PKG_NAME="gtk+"
PKG_VERSION="3.16.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/gtk+/3.16/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python:host atk at-spi2-atk libX11 libXrandr libXi glib gobject-introspection pango cairo gdk-pixbuf fontconfig libXcomposite libX11 libXext libXi libXrandr libXfixes libXinerama libXdamage libepoxy"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="gtk+: The Gimp ToolKit (GTK)"
PKG_LONGDESC="This is GTK+. GTK+, which stands for the Gimp ToolKit, is a library for creating graphical user interfaces for the X Window System. It is designed to be small, efficient, and flexible. GTK+ is written in C with a very object-oriented approach."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --enable-xkb \
                           --enable-xinerama \
                           --enable-xrandr \
                           --enable-xfixes \
                           --enable-xcomposite \
                           --enable-xdamage \
                           --enable-x11-backend \
                           --disable-win32-backend \
                           --disable-quartz-backend \
                           --disable-broadway-backend \
                           --disable-wayland-backend \
                           --disable-mir-backend \
                           --disable-glibtest \
                           --enable-modules \
                           --disable-cups \
                           --disable-papi \
                           --disable-cloudprint \
                           --disable-test-print-backend \
                           --disable-schemas-compile \
                           --disable-colord \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-man \
                           --disable-doc-cross-references \
                           --disable-Bsymbolic \
                           --with-gnu-ld \
                           --with-x"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

# make_target() {
#   make SRC_SUBDIRS="gdk gtk modules"
#   $MAKEINSTALL SRC_SUBDIRS="gdk gtk modules"
# }

# makeinstall_target() {
#   make install DESTDIR=$INSTALL SRC_SUBDIRS="gdk gtk modules"
# }

post_makeinstall_target() {
  mkdir -p $INSTALL/etc/gtk-3.0
  cp $PKG_DIR/config/settings.ini $INSTALL/etc/gtk-3.0
}
