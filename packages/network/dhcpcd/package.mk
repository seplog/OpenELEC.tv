PKG_NAME="dhcpcd"
PKG_VERSION="6.10.3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://roy.marples.name/projects/dhcpcd/"
PKG_URL="http://roy.marples.name/downloads/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client"
PKG_LONGDESC="dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--libexecdir=/lib/dhcpcd \
                           --dbdir=/var/lib/dhcpcd \
                           --without-dev \
                           --without-udev"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME
}
