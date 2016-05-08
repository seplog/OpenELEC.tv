PKG_NAME="rgb"
PKG_VERSION="1.0.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="https://cgit.freedesktop.org/xorg/app/rgb/plain/rgb.txt"
PKG_DEPENDS_TARGET="toolchain xorg-server"
PKG_PRIORITY="optional"
PKG_SECTION="x11/app"
PKG_SHORTDESC="X colorname to RGB mapping database"
PKG_LONGDESC="X colorname to RGB mapping database"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  : # nop()
}

post_unpack() {
  cp $ROOT/$SOURCES/$PKG_NAME/rgb.txt $ROOT/$PKG_BUILD/rgb.txt
}

make_target() {
  : # nop()
}

makeinstall_target() {
  : # nop()
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/X11/
  cp $ROOT/$PKG_BUILD/rgb.txt $INSTALL/usr/share/X11/

  mkdir -p $INSTALL/usr/share/X11/xorg.conf.d/
  cp $PKG_DIR/config/20-rgb.conf $INSTALL/usr/share/X11/xorg.conf.d/
}
