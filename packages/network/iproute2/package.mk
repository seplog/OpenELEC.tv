PKG_NAME="iproute2"
PKG_VERSION="4.6.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2"
PKG_URL="https://www.kernel.org/pub/linux/utils/net/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libmnl iptables xz bison:host flex:host"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="kernel routing and traffic control utilities"
PKG_LONGDESC="kernel routing and traffic control utilities"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME

  # Disable ARPd
  sed -i /ARPD/d Makefile
  sed -i 's/arpd.8//' man/man8/Makefile
  rm -v doc/arpd.sgml  
}

configure_target() {
#   echo "TC_CONFIG_ATM := n" > Config
#   echo "TC_CONFIG_XT  := y" >> Config
#   echo "TC_CONFIG_IPSET := y" >> Config
#   echo "HAVE_BERKELEY_DB := n" >> Config
#   echo "HAVE_MNL      := n" >> Config
#   echo "HAVE_SELINUX  := n" >> Config
#   echo "HAVE_LATEX    := n" >> Config
#   echo "HAVE_PDFLATEX := n" >> Config
  : # nop()
}
