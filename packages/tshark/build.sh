LINUXDROID_PKG_HOMEPAGE=https://www.aircrack-ng.org
LINUXDROID_PKG_DESCRIPTION="network protocol analyzer and sniffer"
LINUXDROID_PKG_VERSION=2.6.3
LINUXDROID_PKG_SRCURL=https://www.wireshark.org/download/src/all-versions/wireshark-${LINUXDROID_PKG_VERSION}.tar.xz
LINUXDROID_PKG_SHA256=d158a8a626dc0997a826cf12b5316a3d393fb9f93d84cc86e75b212f0044a3ec
LINUXDROID_PKG_MAINTAINER="Auxilus @Auxilus"
LINUXDROID_PKG_DEPENDS="glib, libgpg-error, libgcrypt, libnl, libpcap, openssl"
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--with-qt=no
--disable-wireshark
--with-lua=no
"

linuxdroid_step_pre_configure () {
	./autogen.sh
	LDFLAGS+=" -L$LINUXDROID_PKG_BUILDDIR/wsutil/.libs -L$LINUXDROID_PKG_BUILDDIR/epan/.libs" #A bit hacky..
}
