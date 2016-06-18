PKG_NAME="netctl"
PKG_VERSION="1.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://wiki.archlinux.org/index.php/Netctl"
PKG_URL="https://sources.archlinux.org/other/packages/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain bash systemd dhcpcd openresolv"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="netctl: Profile based network connection tool from Arch Linux."
PKG_LONGDESC="netctl: Profile based network connection tool from Arch Linux."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr SHELL=bash"

make_target() {
  : # nop()
}
