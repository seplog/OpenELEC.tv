PKG_NAME="rxvt-unicode"
PKG_VERSION="9.22"
PKG_REV="0"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://software.schmorp.de/pkg/rxvt-unicode.html"
PKG_URL="http://dist.schmorp.de/$PKG_NAME/Attic/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libX11 libXft startup-notification"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="rxvt-unicode is a clone of the terminal emulator rxvt, an X Window System terminal emulator which includes support for XFT and Unicode."
PKG_LONGDESC="rxvt-unicode is a clone of the terminal emulator rxvt, an X Window System terminal emulator which includes support for XFT and Unicode."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-pixbuf \
                           --disable-perl"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/X11/app-defaults/
  cp $PKG_DIR/config/urxvt-color $INSTALL/usr/share/X11/app-defaults/
}
