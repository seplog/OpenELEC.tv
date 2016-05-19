PKG_NAME="dmenu"
PKG_VERSION="4.6"
PKG_REV="0"
PKG_ARCH="x86_64"
PKG_LICENSE="MIT"
PKG_SITE="http://tools.suckless.org/dmenu/"
PKG_URL="http://dl.suckless.org/tools/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain fontconfig freetype libX11 libXft libXinerama xineramaproto xproto libXrender"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently."
PKG_LONGDESC="dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="X11INC=$PKG_CONFIG_SYSROOT_DIR/usr/include/X11 \
                      X11LIB=$PKG_CONFIG_SYSROOT_DIR/usr/lib \
                      FREETYPEINC=$PKG_CONFIG_SYSROOT_DIR/usr/include/freetype2 \
                      CC=$CC"

PKG_MAKEINSTALL_OPTS_TARGET="PREFIX=/usr"
