PKG_NAME="netctl"
PKG_VERSION="1.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://wiki.archlinux.org/index.php/Netctl"
PKG_URL="https://sources.archlinux.org/other/packages/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain bash findutils systemd dhcpcd openresolv wpa_supplicant iproute2 iptables"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="netctl: Profile based network connection tool from Arch Linux."
PKG_LONGDESC="netctl: Profile based network connection tool from Arch Linux."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr SHELL=bash"

pre_make_target() {
  # search and replace all /etc/netctl
  sed -i "s_/var/lib/netctl/netctl.state_/storage/.config/netctl/states/netctl.state_g" src/lib/globals
  sed -i "s/wheel/root/g" src/lib/wpa
}

make_target() {
  : # nop()
}

post_makeinstall_target() {
  sed -i "s_/etc/systemd/system_/storage/.config/system.d_g" $INSTALL/usr/bin/netctl
  mkdir -p $INSTALL/usr/config/
  cp $INSTALL/etc/netctl $INSTALL/usr/config -Rf
  rm -Rf $INSTALL/etc/netctl

  mkdir -p $INSTALL/usr/config/netctl/hooks
  mkdir -p $INSTALL/usr/config/netctl/states
  ln -sf /storage/.config/netctl $INSTALL/etc
}

# post_install() {
#   enable_service netctl.service
# }
