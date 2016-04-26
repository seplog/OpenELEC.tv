PKG_NAME="i3"
# dont bump or go back to ratpoison then f*** all 3rdparty stuff.
PKG_VERSION="4.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://i3wm.org/"
PKG_URL="http://i3wm.org/downloads/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libev yajl libxcb libxkbcommon startup-notification xcb-util xcb-util-keysyms xcb-util-wm xcb-util-cursor pango pcre"
PKG_PRIORITY="optional"
PKG_SECTION="x11/other"
PKG_SHORTDESC="An improved dynamic tiling window manager"
PKG_LONGDESC="An improved dynamic tiling window manager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

if [ "$WINDOWMANAGER" = "i3" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $I3EXTRA"
fi

post_install() {
  enable_service windowmanager.service
}

#post_makeinstall_target() {
#  cp $PKG_DIR/config/init $INSTALL/usr/share/fluxbox/
#  cp $PKG_DIR/config/keys $INSTALL/usr/share/fluxbox/
#}
