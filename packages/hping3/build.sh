LINUXDROID_PKG_HOMEPAGE=http://www.hping.org
LINUXDROID_PKG_DESCRIPTION="hping is a command-line oriented TCP/IP packet assembler/analyzer."
# Same versioning as archlinux:
LINUXDROID_PKG_VERSION=3.0.0
LINUXDROID_PKG_BUILD_IN_SRC="yes"
LINUXDROID_PKG_DEPENDS="libandroid-shmem, libpcap, tcl"
LINUXDROID_PKG_BUILD_DEPENDS="libpcap-dev, tcl-dev"
LINUXDROID_PKG_SHA256=f5a671a62a11dc8114fa98eade19542ed1c3aa3c832b0e572ca0eb1a5a4faee8
LINUXDROID_PKG_SRCURL=http://www.hping.org/hping3-20051105.tar.gz

linuxdroid_step_post_configure () {
	export LDFLAGS+=" -landroid-shmem"
	mkdir -p $LINUXDROID_PREFIX/share/man/man8
}
