PKG_NAME="startup-notification"
PKG_VERSION="0.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://xcb.freedesktop.org"
PKG_URL="http://www.freedesktop.org/software/$PKG_NAME/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libX11 libxcb xcb-util xproto"
PKG_PRIORITY="optional"
PKG_SECTION="x11/lib"
PKG_SHORTDESC="startup-notification: startup-notification contains a reference implementation of the startup notification protocol."
PKG_LONGDESC="startup-notification contains a reference implementation of the startup notification protocol."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           lf_cv_sane_realloc=yes"
