PKG_NAME="libvirt"
PKG_VERSION="1.3.3.2"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://www.libvirt.org/"
PKG_URL="http://libvirt.org/sources/stable_updates/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libgcrypt libnl libxml2 curl dmidecode util-linux gettext readline fuse LVM2 parted libpcap qemu systemd iptables iproute2 libpciaccess yajl pm-utils ebtables dnsmasq" # scrub netcat gnutls ncurses radvd ( libssh >= 1.3 ) (libsystemd-daemon? o0)
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="C toolkit to manipulate virtual machines"
PKG_LONGDESC="C toolkit to manipulate virtual machines"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_path_IPTABLES_PATH=/usr/sbin/iptables \
                           ac_cv_path_IP6TABLES_PATH=/usr/sbin/ip6tables \
                           ac_cv_path_EBTABLES_PATH=/usr/sbin/ebtables \
                           ac_cv_path_DNSMASQ=/usr/sbin/dnsmasq \
                           --without-apparmor \
                           --without-apparmor-mount \
                           --without-attr \
                           --without-audit \
                           --without-avahi \
                           --with-blkid \
                           --without-capng \
                           --with-curl \
                           --without-dbus \
                           --with-fuse \
                           --without-glusterfs \
                           --without-hal \
                           --without-netcf \
                           --without-numactl \
                           --without-openwsman \
                           --with-pciaccess \
                           --with-readline \
                           --without-sanlock \
                           --without-sasl \
                           --without-selinux \
                           --without-selinux-mount \
                           --without-ssh2 \
                           --without-systemd-daemon \
                           --with-udev \
                           --without-wireshark-dissector \
                           --without-ws-plugindir \
                           --without-nss-plugin \
                           --with-yajl \
                           --without-xen \
                           --without-xen-inotify \
                           --with-qemu \
                           --without-uml \
                           --without-openvz \
                           --without-vmware \
                           --without-phyp \
                           --without-xenapi \
                           --without-libxl \
                           --without-vbox \
                           --without-lxc \
                           --with-esx \
                           --without-hyperv \
                           --without-test \
                           --with-remote \
                           --with-libvirtd \
                           --with-chrdev-lock-files \
                           --with-pm-utils \
                           --with-init-script=systemd \
                           --with-sysctl \
                           --without-rhel5-api \
                           --without-login-shell \
                           --without-vz \
                           --without-bhyve \
                           --with-libxml=$SYSROOT_PREFIX/usr \
                           --without-gnutls \
                           --without-polkit \
                           --without-firewalld \
                           --without-secdriver-selinux \
                           --without-secdriver-apparmor \
                           --without-apparmor-profiles \
                           --without-dtrace \
                           --without-numad \
                           --without-libpcap \
                           --with-network \
                           --with-secrets \
                           --with-storage-dir \
                           --with-storage-fs \
                           --with-storage-lvm \
                           --without-storage-iscsi \
                           --without-storage-scsi \
                           --without-storage-mpath \
                           --with-storage-disk \
                           --without-storage-rbd \
                           --without-storage-sheepdog \
                           --without-storage-gluster \
                           --without-storage-zfs \
                           --without-test-suite \
                           --without-libiconv-prefix \
                           --without-libintl-prefix \
                           --with-driver-modules \
                           --with-interface \
                           --with-qemu-user=root \
                           --with-qemu-group=root \
                           --with-macvtap"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config/

  cp $INSTALL/etc/libvirt $INSTALL/usr/config/ -Rf
  rm -Rf $INSTALL/etc/libvirt
  ln -sf /storage/.config/libvirt $INSTALL/etc/

  cp $INSTALL/etc/sysconfig $INSTALL/usr/config/ -Rf
  rm -Rf $INSTALL/etc/sysconfig
  ln -sf /storage/.config/sysconfig $INSTALL/etc/

  # Copy dmidecode... It is only a plugin
  mkdir -p $INSTALL/usr/sbin
  cp -P $(get_build_dir dmidecode)/biosdecode $INSTALL/usr/sbin/
  cp -P $(get_build_dir dmidecode)/dmidecode $INSTALL/usr/sbin/
  cp -P $(get_build_dir dmidecode)/ownership $INSTALL/usr/sbin/
  cp -P $(get_build_dir dmidecode)/vpddecode $INSTALL/usr/sbin/
}

post_install() {
  enable_service libvirtd.service
  enable_service virtlogd.service
}
